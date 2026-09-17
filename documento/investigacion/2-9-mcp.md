# Brief de investigación — 2.9 Model Context Protocol (MCP) (Cap. II)

Fecha: 2026-09-17. Investigador. Verificación: arXiv API (por ID),
CrossRef (DOI), OpenAlex, Semantic Scholar (batch), proceedings.neurips.cc,
curl a las URLs oficiales (modelcontextprotocol.io, anthropic.com,
jsonrpc.org, keycloak.org, rfc-editor.org, ietf.org). Todo lo que no pude
verificar está marcado. Las entradas BibLaTeX son candidatas: se cargan por
Zotero (`documento/09-setup-zotero.md`), no a mano.

Resumen: 12 fuentes núcleo verificadas + 4 opcionales verificadas. Ninguna
key existe todavía en `documento.bib`. Ver "Notas para el redactor" al
final; en particular la **cuestión de versión de la spec** (la vigente hoy
es 2026-07-28, no 2025-06-18) y el detalle de que **Keycloak no soporta
RFC 8707**, que condiciona cómo se redacta 2.9.2.

Convención de claims: **[V]** = verificado en la fuente (texto de la
página, abstract o cuerpo HTML); **[V-meta]** = sólo metadatos verificados
(venue/DOI), contenido no leído en esta pasada.

Alcance respetado (brief §2): el proyecto construye **sólo el servidor
MCP** (tools sobre ERP y predicciones). No se investigó nada sobre
construir asistentes/agentes conversacionales; las fuentes sobre agentes
se usan únicamente para definir el "lado cliente/host" que consume el
servidor.

---

## 2.9.1 Definición y Arquitectura

### MCPSpec2026 — especificación vigente (2026-07-28)

```bibtex
@online{MCPSpec2026,
  author       = {{Model Context Protocol}},
  title        = {Model Context Protocol Specification},
  version      = {2026-07-28},
  organization = {Agentic AI Foundation / Linux Foundation},
  year         = {2026},
  url          = {https://modelcontextprotocol.io/specification/2026-07-28},
  urldate      = {2026-09-17}
}
```

Verificación: curl 200; `/specification/latest` redirige a `2026-07-28`;
la página `specification/versioning` dice textualmente "The **current**
protocol version is **2026-07-28**". Revisiones publicadas: 2024-11-05,
2025-03-26, 2025-06-18, 2025-11-25, 2026-07-28 (índice de navegación).

Claims (página índice de la spec):
- [V] Definición: "Model Context Protocol (MCP) is an open protocol that
  enables seamless integration between LLM applications and external data
  sources and tools […] MCP provides a standardized way to connect LLMs
  with the context they need."
- [V] Participantes: "The protocol uses JSON-RPC 2.0 messages to establish
  communication between: **Hosts**: LLM applications that initiate
  connections; **Clients**: Connectors within the host application;
  **Servers**: Services that provide context and capabilities."
- [V] Inspiración: "MCP takes some inspiration from the Language Server
  Protocol".
- [V] Primitivas del servidor: "**Resources**: Context and data, for the
  user or the AI model to use; **Prompts**: Templated messages and
  workflows for users; **Tools**: Functions for the AI model to execute."
  (Redacción idéntica en 2025-06-18 y 2026-07-28.)
- [V] Primitiva del cliente en 2026-07-28: sólo **Elicitation**
  ("Server-initiated requests for additional information from users").
  Sampling y Roots aparecen en 2025-06-18 y están **deprecados** en
  2026-07-28 (ver changelog abajo).
- [V] "Base Protocol: JSON-RPC message format; Stateless, self-contained
  requests; Per-request capability negotiation." (En 2025-06-18 decía
  "Stateful connections; Server and client capability negotiation".)
- [V] Extensiones opcionales: Tasks, Skills over MCP, MCP Apps.
- [V] Principios de seguridad (sección "Security and Trust & Safety"):
  "User Consent and Control", "Data Privacy" ("Hosts must obtain explicit
  user consent before exposing user data to servers"), "Tool Safety"
  ("Tools represent arbitrary code execution and must be treated with
  appropriate caution […] Hosts must obtain explicit user consent before
  invoking any tool"). "While MCP itself cannot enforce these security
  principles at the protocol level, implementors SHOULD: Build robust
  consent and authorization flows […] Implement appropriate access
  controls and data protections".

Claims (página `2026-07-28/changelog`, "Key Changes" respecto a 2025-11-25):
- [V] "Remove protocol-level sessions and the `Mcp-Session-Id` header from
  the Streamable HTTP transport."
- [V] "Make MCP stateless: remove the `initialize`/`notifications/initialized`
  handshake. Every request now carries its protocol version and client
  capabilities in `_meta`."
- [V] Nuevo RPC obligatorio `server/discover`.
- [V] Deprecados: "Roots, Sampling, and Logging features"; el transporte
  HTTP+SSE (deprecado desde 2025-03-26); y RFC 7591 Dynamic Client
  Registration "in favor of Client ID Metadata Documents".
- [V] Política de ciclo de vida: ventana mínima de deprecación de doce
  meses.

Por qué aplica: es la fuente normativa para toda definición de 2.9.1.
Hay que citar la versión vigente al momento de redactar y decir qué
versión implementa el SDK usado (ver Notas, punto 1).

### MCPSpec2025 — revisión 2025-06-18 (arquitectura, transportes, tools)

```bibtex
@online{MCPSpec2025,
  author       = {{Model Context Protocol}},
  title        = {Model Context Protocol Specification},
  version      = {2025-06-18},
  organization = {Anthropic, PBC},
  year         = {2025},
  url          = {https://modelcontextprotocol.io/specification/2025-06-18},
  urldate      = {2026-09-17}
}
```

Verificación: curl 200 en `/2025-06-18`, `/architecture`,
`/basic/transports`, `/basic/authorization`, `/server/tools`. Es la
revisión que implementaban la mayoría de los SDK durante 2025 y la que el
encargo pedía anotar; sus páginas de arquitectura/transportes/tools son
más detalladas y las cito por sección.

Claims (página `architecture`):
- [V] "MCP follows a client-host-server architecture where each host can
  run multiple client instances […] Built on JSON-RPC, MCP provides a
  stateful session protocol focused on context exchange and sampling
  coordination between clients and servers."
- [V] Host: "acts as the container and coordinator: Creates and manages
  multiple client instances; Controls client connection permissions and
  lifecycle; Enforces security policies and consent requirements; Handles
  user authorization decisions; Coordinates AI/LLM integration and
  sampling".
- [V] Client: "maintains an isolated server connection: Establishes one
  stateful session per server […] each client having a 1:1 relationship
  with a particular server."
- [V] Server: "Expose resources, tools and prompts via MCP primitives;
  Operate independently with focused responsibilities […] Can be local
  processes or remote services."
- [V] Principios de diseño: "Servers should be extremely easy to build";
  "Servers should be highly composable"; "Servers should not be able to
  read the whole conversation, nor 'see into' other servers"; "Features
  can be added to servers and clients progressively".
- [V] Negociación de capacidades: "clients and servers explicitly declare
  their supported features during initialization […] Tool invocation
  requires the server to declare tool capabilities".

Claims (página `basic/transports`):
- [V] "MCP uses JSON-RPC to encode messages. JSON-RPC messages MUST be
  UTF-8 encoded. The protocol currently defines two standard transport
  mechanisms […]: stdio […] Streamable HTTP".
- [V] stdio: "The client launches the MCP server as a subprocess. The
  server reads JSON-RPC messages from its standard input (stdin) and sends
  messages to its standard output (stdout) […] Messages are delimited by
  newlines".
- [V] Streamable HTTP: "the server operates as an independent process that
  can handle multiple client connections. This transport uses HTTP POST and
  GET requests. Server can optionally make use of Server-Sent Events (SSE)
  to stream multiple server messages." "The server MUST provide a single
  HTTP endpoint path […] For example […] `https://example.com/mcp`."
  "This replaces the HTTP+SSE transport from protocol version 2024-11-05."
- [V] Advertencia de seguridad: "Servers MUST validate the `Origin` header
  on all incoming connections to prevent DNS rebinding attacks"; "When
  running locally, servers SHOULD bind only to localhost"; "Servers SHOULD
  implement proper authentication for all connections".
- [V] "The protocol is transport-agnostic and can be implemented over any
  communication channel that supports bidirectional message exchange."

Claims (página `server/tools`):
- [V] "MCP allows servers to expose tools that can be invoked by language
  models. Tools enable models to interact with external systems, such as
  querying databases, calling APIs, or performing computations. Each tool
  is uniquely identified by a name and includes metadata describing its
  schema."
- [V] "Tools in MCP are designed to be **model-controlled**, meaning that
  the language model can discover and invoke tools automatically based on
  its contextual understanding and the user's prompts."
- [V] "there SHOULD always be a human in the loop with the ability to deny
  tool invocations."
- [V] Definición de tool: `name`, `title`, `description`, `inputSchema`
  ("JSON Schema defining expected parameters"), `outputSchema` (opcional),
  `annotations`. Mensajes `tools/list` (con paginación) y `tools/call`;
  notificación `notifications/tools/list_changed`.
- [V] Resultados: contenido no estructurado (`content`: text, image,
  audio, resource_link, resource) o **estructurado** (`structuredContent`,
  validable contra `outputSchema`; "Servers MUST provide structured results
  that conform to this schema").
- [V] Dos mecanismos de error: errores de protocolo JSON-RPC (p. ej. tool
  desconocida, `-32602`) y errores de ejecución con `isError: true`
  ("API failures, Invalid input data, Business logic errors").
- [V] Seguridad: "Servers MUST: Validate all tool inputs; Implement proper
  access controls; Rate limit tool invocations; Sanitize tool outputs."
  "Clients SHOULD: Prompt for user confirmation on sensitive operations
  […] Log tool usage for audit purposes." "clients MUST consider tool
  annotations to be untrusted unless they come from trusted servers."

Por qué aplica: da la descripción técnica de la primitiva que el proyecto
implementa (tools sobre consultas del ERP y sobre predicciones), el
transporte a elegir (Streamable HTTP, porque el servidor corre en Docker
como proceso independiente y debe autenticar) y las obligaciones de
seguridad del lado servidor, que son las que el proyecto controla.

### JSONRPC2013 — JSON-RPC 2.0

```bibtex
@online{JSONRPC2013,
  author       = {{JSON-RPC Working Group}},
  title        = {{JSON-RPC} 2.0 Specification},
  year         = {2013},
  note         = {Publicada originalmente el 2010-03-26; revisión 2013-01-04},
  url          = {https://www.jsonrpc.org/specification},
  urldate      = {2026-09-17}
}
```

Verificación: curl 200; la página indica origen 2010-03-26, actualización
2013-01-04, versión 2.0.

Claims:
- [V] "JSON-RPC is a stateless, light-weight remote procedure call (RPC)
  protocol." Es "transport agnostic in that the concepts can be used
  within the same process, over sockets, over http, or in many various
  message passing environments."
- [V] Objeto Request: `jsonrpc` ("2.0"), `method`, `params` (opcional),
  `id`. Una Notification es un Request sin `id`: el servidor no responde.
- [V] Objeto Response: `result` (éxito) xor `error`; `id` igual al del
  Request. Objeto Error: `code`, `message`, `data`. Códigos predefinidos:
  -32700 Parse error, -32600 Invalid Request, -32601 Method not found,
  -32602 Invalid params, -32603 Internal error, -32000..-32099 Server
  error.

Por qué aplica: MCP se define encima de JSON-RPC 2.0; permite explicar en
una frase el formato de mensaje (`tools/call` es un Request con `id`;
`notifications/tools/list_changed` es una Notification) y de dónde salen
los códigos de error que la spec reutiliza (-32602 para tool desconocida).

### Anthropic2024MCP — anuncio de MCP

```bibtex
@online{Anthropic2024MCP,
  author       = {{Anthropic}},
  title        = {Introducing the Model Context Protocol},
  year         = {2024},
  month        = {11},
  day          = {25},
  url          = {https://www.anthropic.com/news/model-context-protocol},
  urldate      = {2026-09-17}
}
```

Verificación: curl 200; fecha "Nov 25, 2024" en la página.

Claims:
- [V] "Today, we're open-sourcing the Model Context Protocol (MCP), a new
  standard for connecting AI assistants to the systems where data lives".
- [V] Problema: "Even the most sophisticated models are constrained by
  their isolation from data—trapped behind information silos and legacy
  systems. Every new data source requires its own custom implementation".
- [V] Arquitectura: "Developers can either expose their data through MCP
  servers or build AI applications (MCP clients) that connect to these
  servers".
- [V] Tres componentes liberados: la especificación y SDKs; soporte de
  servidores MCP locales en Claude Desktop; repositorio abierto de
  servidores. Servidores preconstruidos: Google Drive, Slack, GitHub, Git,
  Postgres, Puppeteer. Adoptantes tempranos: Block, Apollo; herramientas
  Zed, Replit, Codeium, Sourcegraph.

Por qué aplica: fuente primaria del origen y la motivación
(integraciones a medida por cada fuente de datos → estándar abierto); la
frase "expose their data through MCP servers" es exactamente el rol que
toma el proyecto.

### MCPBlog2025AAIF — gobernanza: donación a la Agentic AI Foundation

```bibtex
@online{MCPBlog2025AAIF,
  author       = {Soria Parra, David},
  title        = {{MCP} joins the Agentic {AI} Foundation},
  organization = {Model Context Protocol Blog},
  year         = {2025},
  month        = {12},
  day          = {9},
  url          = {https://blog.modelcontextprotocol.io/posts/2025-12-09-mcp-joins-agentic-ai-foundation/},
  urldate      = {2026-09-17}
}
```

Verificación: WebFetch de la URL; "December 9, 2025 · David Soria Parra
(Lead Core Maintainer)". Corroborado por búsqueda web (nota de prensa de
la Linux Foundation, TechCrunch, InfoQ, mismo día).

Claims:
- [V] "Anthropic is donating MCP to the Agentic AI Foundation, a directed
  fund under the Linux Foundation." Proyectos fundacionales: MCP, goose
  (Block) y AGENTS.md (OpenAI); respaldo de Google, Microsoft, AWS,
  Cloudflare y Bloomberg.
- [V] "ensuring MCP's vendor-neutrality and long-term independence under
  the same neutral stewardship that supports Kubernetes, PyTorch, and
  Node.js."
- [V] Adopción declarada: "Over 97 million monthly SDK downloads, 10,000
  active servers and first-class client support" (cifra autodeclarada por
  el proyecto; citar como tal).

Por qué aplica: responde a la objeción "es un estándar de un solo
proveedor": desde dic. 2025 la gobernanza es neutral bajo la Linux
Foundation, lo que respalda elegirlo como capa de integración en un ERP
que va a durar más que cualquier proveedor de modelos.

### Hou2025 — panorama y amenazas de MCP (TOSEM)

```bibtex
@article{Hou2025,
  author  = {Hou, Xinyi and Zhao, Yanjie and Wang, Shenao and Wang, Haoyu},
  title   = {Model Context Protocol ({MCP}): Landscape, Security Threats, and Future Research Directions},
  journal = {ACM Transactions on Software Engineering and Methodology},
  volume  = {35},
  number  = {10},
  pages   = {1--37},
  year    = {2026},
  doi     = {10.1145/3796519},
  eprint  = {2503.23278},
  eprinttype = {arxiv}
}
```

Verificación: arXiv 2503.23278 (v3, 2025-10-07; 4 autores); CrossRef DOI
10.1145/3796519: TOSEM 35(10), pp. 1–37, ACM, fecha 2026-09-16. Semantic
Scholar: 495 citas. **Ojo:** la versión de revista tiene fecha 2026; si se
cita el preprint, año 2025. Usar la de revista (CrossRef) y `eprint` para
el arXiv.

Claims:
- [V] Abstract: "MCP is an emerging open standard that defines a unified,
  bi-directional communication and dynamic discovery protocol between AI
  models and external tools or resources, aiming to enhance
  interoperability and reduce fragmentation across diverse systems."
- [V] Abstract: ciclo de vida del servidor MCP en cuatro fases
  ("creation, deployment, operation, and maintenance") y 16 actividades;
  taxonomía de amenazas por cuatro tipos de atacante ("malicious
  developers, external attackers, malicious users, and security flaws")
  con 16 escenarios; salvaguardas por fase.
- [V] §3.1 (HTML v3): "the MCP host is an AI application that provides the
  environment for executing AI-based tasks while running the MCP client";
  el cliente es intermediario que mantiene la comunicación; el servidor
  expone tres capacidades — §3.1.3: Tools ("invoke external services and
  APIs to execute operations"), Resources ("Exposing data to AI models"),
  Prompts ("Reusable templates for workflow optimization").
- [V] §2.1: contrasta el cableado manual de APIs, las interfaces de plugin
  (ChatGPT Plugins, 2023), los frameworks de agentes (LangChain) y RAG;
  MCP se distingue por ser "open-source and platform-agnostic, supporting
  bi-directional communication channels", frente a plugins
  unidireccionales. Figura 1: sin MCP, "specific APIs" por herramienta;
  con MCP, "unified interface".
- [V] §5.3.1: amenaza de robo de credenciales/tokens en la fase de
  invocación de tools. §5.1.2: conflictos de nombres de tools →
  "Ambiguity, wrong tool execution, privilege escalation".
- [V] §4.2.3: el hosting remoto de Cloudflare "integrates managed
  authentication with OAuth 2.0, which ensures that only authorized agents
  and users can access MCP servers" (ejemplo de industria, no norma).
- [V] §4.1.1 / Tabla 1: adopción por Anthropic, OpenAI ("MCP support
  integrated across products and within the Agent SDK"), Google DeepMind
  (Gemini), Cursor, Microsoft Copilot Studio, JetBrains.

Por qué aplica: única fuente revisada por pares (TOSEM) que describe la
arquitectura y a la vez sistematiza las amenazas; sirve para 2.9.1
(definición académica, comparación con plugins/function calling) y para
2.9.2 (por qué el servidor del proyecto debe autenticar y limitar
permisos).

### Ehtesham2025 — survey de protocolos de interoperabilidad de agentes

```bibtex
@online{Ehtesham2025,
  author  = {Ehtesham, Abul and Singh, Aditi and Gupta, Gaurav Kumar and Kumar, Saket},
  title   = {A survey of agent interoperability protocols: Model Context Protocol ({MCP}), Agent Communication Protocol ({ACP}), Agent-to-Agent Protocol ({A2A}), and Agent Network Protocol ({ANP})},
  year    = {2025},
  eprint  = {2505.02279},
  eprinttype = {arxiv},
  eprintclass = {cs.AI},
  version = {2},
  url     = {https://arxiv.org/abs/2505.02279},
  urldate = {2026-09-17}
}
```

Verificación: arXiv 2505.02279 v2 (2025-05-23; 4 autores). Sin venue
formal (OpenAlex/S2: sólo preprint; S2: 159 citas). Usar
`@online`/`@misc` con eprint, no `@article`.

Claims:
- [V] Abstract: "MCP provides a JSON-RPC client-server interface for
  secure tool invocation and typed data exchange."
- [V] Abstract: hoja de ruta por fases "beginning with MCP for tool
  access", luego ACP, A2A y ANP. §9.1: la fase inicial adopta MCP "to
  enable structured and secure interaction between LLMs and external tools
  or resources" para "tool invocation, deterministic execution, and typed
  input/output".
- [V] §4.4: "Tools are model-controlled capabilities that allow the LLM to
  invoke external APIs or services"; "Resources are
  application-controlled elements, such as structured documents or
  contextual datasets"; "Prompts are user-controlled templates defined by
  the server but selected by end-users"; "Sampling is server-controlled".
- [V] §4.3: "the Protocol Layer […] defines the semantics of message
  exchange using the JSON-RPC 2.0 specification"; transportes "Stdio and
  network-based channels such as HTTP with optional Server-Sent Events
  (SSE)".
- [V] §3.4: en los frameworks de agentes "each framework employs its own
  metadata conventions, hindering cross-framework reuse of tools and
  requiring bespoke adapters for interoperability".
- No verificado: el paper **no** usa la expresión "problema N×M" ni
  discute OAuth 2.1 para MCP (sólo para ACP, Tabla 5). No atribuirle eso.

Por qué aplica: da la clasificación "model-controlled / application-
controlled / user-controlled" de las primitivas (que la spec 2025-06-18
sólo usa para tools) y sitúa a MCP como el primer escalón —acceso a
herramientas— frente a protocolos agente-a-agente que quedan fuera del
alcance del proyecto.

---

## Relación con "tool use" / function calling en LLM

### Schick2023 — Toolformer

```bibtex
@inproceedings{Schick2023,
  author    = {Schick, Timo and Dwivedi-Yu, Jane and Dess{\`i}, Roberto and Raileanu, Roberta and Lomeli, Maria and Hambro, Eric and Zettlemoyer, Luke and Cancedda, Nicola and Scialom, Thomas},
  title     = {Toolformer: Language Models Can Teach Themselves to Use Tools},
  booktitle = {Advances in Neural Information Processing Systems 36 ({NeurIPS} 2023)},
  pages     = {68539--68551},
  year      = {2023},
  doi       = {10.52202/075280-2997},
  eprint    = {2302.04761},
  eprinttype = {arxiv}
}
```

Verificación: arXiv 2302.04761 (v1, 2023-02-09, 8 autores);
proceedings.neurips.cc (título, 2023); CrossRef DOI 10.52202/075280-2997
(NeurIPS 36, pp. 68539–68551; la versión de proceedings suma a Hambro:
9 autores). S2: ~5.600 citas. Nota: el DOI 10.52202 es del agregador de
proceedings (Curran); si el estilo de la carrera prefiere sin DOI, dejar
sólo la URL de proceedings.

Claims:
- [V] Abstract: los LM "struggle with basic functionality, such as
  arithmetic or factual lookup, where much simpler and smaller models
  excel"; "LMs can teach themselves to use external tools via simple APIs".
- [V] Abstract: "Toolformer, a model trained to decide which APIs to call,
  when to call them, what arguments to pass, and how to best incorporate
  the results into future token prediction"; herramientas: calculadora,
  Q&A, buscadores, traductor, calendario.

Por qué aplica: define qué es "tool use" desde el lado del modelo (decidir
qué API llamar, cuándo y con qué argumentos). MCP estandariza el lado
opuesto: cómo un servidor describe y ejecuta esas APIs. Sirve para la
frase de transición de 2.9.1 sobre function calling.

### Qin2024 — ToolLLM

```bibtex
@inproceedings{Qin2024,
  author    = {Qin, Yujia and Liang, Shihao and Ye, Yining and Zhu, Kunlun and Yan, Lan and Lu, Yaxi and Lin, Yankai and Cong, Xin and Tang, Xiangru and Qian, Bill and Zhao, Sihan and Hong, Lauren and Tian, Runchu and Xie, Ruobing and Zhou, Jie and Gerstein, Mark and Li, Dahai and Liu, Zhiyuan and Sun, Maosong},
  title     = {{ToolLLM}: Facilitating Large Language Models to Master 16000+ Real-world {APIs}},
  booktitle = {The Twelfth International Conference on Learning Representations ({ICLR} 2024)},
  year      = {2024},
  eprint    = {2307.16789},
  eprinttype = {arxiv}
}
```

Verificación: arXiv 2307.16789 (v2, 2023-10-03; 19 autores). Venue ICLR:
[V-meta] sólo por Semantic Scholar ("International Conference on Learning
Representations"; ~2.200 citas); OpenReview y dblp bloquearon el acceso
automatizado. Confirmar en openreview.net antes de fijar `booktitle`.

Claims:
- [V] Abstract: los LLM abiertos "remain significantly limited in tool-use
  capabilities, i.e., using external tools (APIs) to fulfill human
  instructions"; ToolBench recoge "16,464 real-world RESTful APIs spanning
  49 categories from RapidAPI Hub", con escenarios "single-tool and
  multi-tool".
- [V] Abstract: el modelo se equipa con "a neural API retriever to
  recommend appropriate APIs for each instruction" y "generalize to
  unseen APIs".

Por qué aplica: muestra que el problema práctico del tool use es la
escala y heterogeneidad de APIs REST reales (miles, multi-herramienta);
MCP ataca justamente la descripción uniforme (`tools/list` con JSON
Schema) que hace posible esa generalización. Usar sólo si el redactor
quiere un segundo respaldo; con Schick2023 y Patil2024 alcanza.

### Patil2024 — Gorilla

```bibtex
@inproceedings{Patil2024,
  author    = {Patil, Shishir G. and Zhang, Tianjun and Wang, Xin and Gonzalez, Joseph E.},
  title     = {Gorilla: Large Language Model Connected with Massive {APIs}},
  booktitle = {Advances in Neural Information Processing Systems 37 ({NeurIPS} 2024)},
  pages     = {126544--126565},
  year      = {2024},
  doi       = {10.52202/079017-4020},
  eprint    = {2305.15334},
  eprinttype = {arxiv}
}
```

Verificación: arXiv 2305.15334 (v1, 2023-05-24; 4 autores);
proceedings.neurips.cc listado 2024 (hash e4c61f57…); CrossRef DOI
10.52202/079017-4020 (NeurIPS 37, pp. 126544–126565). S2: ~1.600 citas.

Claims:
- [V] Abstract: el potencial de los LLM "to effectively use tools via API
  calls remains unfulfilled […] largely due to their inability to generate
  accurate input arguments and their tendency to hallucinate the wrong
  usage of an API call".
- [V] Abstract: "When combined with a document retriever, Gorilla
  demonstrates a strong capability to adapt to test-time document changes,
  enabling flexible user updates or version changes. It also substantially
  mitigates the issue of hallucination".

Por qué aplica: justifica por qué el servidor MCP del proyecto debe
describir cada tool con `inputSchema` preciso y validar entradas: el
modo de fallo documentado del tool use es alucinar argumentos o el uso
de la API. La idea de "documentación consultada en tiempo de ejecución"
es lo que `tools/list` formaliza.

---

## 2.9.2 Integración de Sistemas Empresariales con Modelos de Lenguaje

### MCPSpec2026 / MCPSpec2025 — Authorization (OAuth 2.1)

Citar la misma entrada `MCPSpec2026` (o `MCPSpec2025`) con la sección
"Base Protocol → Authorization". Verificación: curl 200 en
`/2025-06-18/basic/authorization` y `/2026-07-28/basic/authorization`
(esta última con subpáginas `authorization-server-discovery`,
`client-registration`, `security-considerations`).

Claims (idénticos en ambas revisiones salvo donde se indica):
- [V] Ámbito: "The Model Context Protocol provides authorization
  capabilities at the transport level […] This specification defines the
  authorization flow for HTTP-based transports." "Authorization is
  OPTIONAL […] Implementations using an STDIO transport SHOULD NOT follow
  this specification, and instead retrieve credentials from the
  environment."
- [V] Normas base (2025-06-18): OAuth 2.1 IETF draft
  (draft-ietf-oauth-v2-1-13), RFC 8414 (AS Metadata), RFC 7591 (Dynamic
  Client Registration), RFC 9728 (Protected Resource Metadata). En
  2026-07-28 se agregan RFC 6750, RFC 8707, RFC 9207, Client ID Metadata
  Documents (draft-ietf-oauth-client-id-metadata-document-00), OpenID
  Connect Discovery 1.0 y OIDC Dynamic Client Registration 1.0.
- [V] Roles: "A protected MCP server acts as an OAuth 2.1 resource server
  […] An MCP client acts as an OAuth 2.1 client […] The authorization
  server is responsible for interacting with the user (if necessary) and
  issuing access tokens for use at the MCP server. The implementation
  details of the authorization server are beyond the scope of this
  specification."
- [V] Descubrimiento: "MCP servers MUST implement OAuth 2.0 Protected
  Resource Metadata (RFC9728)"; el servidor responde 401 con cabecera
  `WWW-Authenticate` apuntando a `/.well-known/oauth-protected-resource`,
  cuyo campo `authorization_servers` señala el AS. En 2026-07-28: el AS
  "MUST provide at least one of" RFC 8414 u **OpenID Connect Discovery
  1.0** (relevante: Keycloak expone OIDC Discovery).
- [V] Registro de cliente: 2025-06-18 recomienda RFC 7591 (SHOULD);
  2026-07-28 lo deprecia en favor de Client ID Metadata Documents y admite
  tres vías: "Client ID Metadata Documents, pre-registration, or Dynamic
  Client Registration".
- [V] PKCE: "MCP clients MUST implement PKCE according to OAuth 2.1
  Section 7.5.2".
- [V] Resource Indicators: "MCP clients MUST implement Resource Indicators
  for OAuth 2.0 as defined in RFC 8707 […] MUST identify the MCP server
  that the client intends to use the token with […] MCP clients MUST send
  this parameter regardless of whether authorization servers support it."
- [V] Uso del token: "Authorization: Bearer <access-token>"; "authorization
  MUST be included in every HTTP request from client to server"; "Access
  tokens MUST NOT be included in the URI query string".
- [V] **Validación en el servidor MCP** (núcleo de 2.9.2): "MCP servers,
  acting in their role as an OAuth 2.1 resource server, MUST validate
  access tokens as described in OAuth 2.1 Section 5.2. MCP servers MUST
  validate that access tokens were issued specifically for them as the
  intended audience, according to RFC 8707 Section 2 […] Invalid or
  expired tokens MUST receive a HTTP 401 response." "MCP servers MUST NOT
  accept or transit any other tokens."
- [V] Token passthrough prohibido: "If the MCP server makes requests to
  upstream APIs, it may act as an OAuth client to them. The access token
  used at the upstream API is a separate token, issued by the upstream
  authorization server. The MCP server MUST NOT pass through the token it
  received from the MCP client." Razón: "confused deputy problem".
- [V] Errores: 401 "Authorization required or token invalid", 403 "Invalid
  scopes or insufficient permissions", 400 "Malformed authorization
  request".
- [V] 2026-07-28, "Scope Selection Strategy": "MCP servers SHOULD include
  a `scope` parameter in the `WWW-Authenticate` header […] following the
  principle of least privilege"; flujo de *step-up authorization* con
  `error="insufficient_scope"` (RFC 6750 §3.1).
- [V] Otras consideraciones: tokens de corta duración (SHOULD), rotación
  de refresh tokens para clientes públicos (MUST), HTTPS en todos los
  endpoints del AS (MUST), redirect URIs registradas exactas (MUST).

Por qué aplica: es la norma que define exactamente el diseño del proyecto:
el servidor MCP = resource server OAuth 2.1; Keycloak = authorization
server; el ERP (NestJS) y FastAPI = APIs upstream con sus propios tokens.
La regla de "no passthrough" tiene consecuencia de diseño: el servidor
MCP no debe reenviar el token del cliente MCP al ERP tal cual (ver Notas,
punto 3).

### Keycloak2026MCP — guía oficial de Keycloak como AS para MCP

```bibtex
@online{Keycloak2026MCP,
  author       = {{Keycloak}},
  title        = {Integrating with Model Context Protocol ({MCP})},
  organization = {Keycloak (CNCF)},
  year         = {2026},
  note         = {Securing Applications and Services Guide, Keycloak 26.7},
  url          = {https://www.keycloak.org/securing-apps/mcp-authz-server},
  urldate      = {2026-09-17}
}
```

Verificación: WebFetch de la URL (página marcada "Nightly 26.7.4");
GitHub `keycloak/keycloak` releases/latest = tag **26.7.4** (2026-09-17),
o sea que "nightly" y la release estable coinciden en la línea 26.7.
Existe versión espejo en docs.redhat.com ("Red Hat build of Keycloak
26.6, cap. 12 Integrating with MCP"). Al citar, poner la versión de
Keycloak que efectivamente se despliegue.

Claims:
- [V] Título/propósito: "Using Keycloak as an authorization server for
  Model Context Protocol (MCP) servers". Tabla de cumplimiento por versión
  de la spec (2024-11-05 a 2026-07-28).
- [V] RFC 7591 Dynamic Client Registration: "Supported".
- [V] **RFC 8707 Resource Indicators: "Not support"**. Workaround
  documentado: usar *client scopes* con un *Audience mapper* para que el
  claim `aud` del token contenga la URL del servidor MCP (p. ej.
  `https://example.com/mcp`); el cliente manda `resource`, pero Keycloak
  procesa `scope`.
- [V] RFC 9728: la guía aclara que "The standard is for an MCP server and
  not for an authorization server like Keycloak" — o sea, el documento
  `/.well-known/oauth-protected-resource` lo sirve el servidor MCP del
  proyecto, no Keycloak.
- [V] Client ID Metadata Documents: soportado como *feature*
  experimental (`--features=cimd`) con client policies.
- [V] La guía reitera que los servidores MCP "MUST validate that tokens
  presented to them were specifically issued for their use", pero **no
  detalla** cómo verificar el JWT (firma, `iss`, `aud`, `exp`); eso hay
  que tomarlo de RFC 9068 / OAuth 2.1 §5.2 o de la doc general de
  Keycloak (ver 2.8).

Por qué aplica: cierra el circuito de 2.9.2 con el IdP elegido: Keycloak
puede ser el AS de un servidor MCP, con una limitación concreta (RFC 8707)
y su mitigación (audience mapper). Es el punto de conexión con 2.8
(Identidad y acceso).

### Radosevich2025 — MCP Safety Audit

```bibtex
@online{Radosevich2025,
  author  = {Radosevich, Brandon and Halloran, John},
  title   = {{MCP} Safety Audit: {LLMs} with the Model Context Protocol Allow Major Security Exploits},
  year    = {2025},
  eprint  = {2504.03767},
  eprinttype = {arxiv},
  eprintclass = {cs.CR},
  version = {2},
  url     = {https://arxiv.org/abs/2504.03767},
  urldate = {2026-09-17}
}
```

Verificación: **el ID que traía el encargo (2504.03111) es otro paper**
("Les Dissonances: Cross-Tool Harvesting and Polluting…", Li et al., NDSS
2026). El correcto es **arXiv 2504.03767** (v2, 2025-04-11; Radosevich y
Halloran; "27 pages, 21 figures"). Versión publicada: CrossRef DOI
10.1117/12.3097390, SPIE *Assurance and Security for AI-enabled Systems
2026*, 2026-06-10, con **tres autores (Halloran, Radosevich, Black)** y
orden distinto. Citar el preprint (2 autores) o el SPIE (3 autores), no
mezclar. S2: 111 citas.

Claims (abstract):
- [V] "The MCP is an open protocol that standardizes API calls to large
  language models (LLMs), data sources, and agentic tools. By connecting
  multiple MCP servers, each defined with a set of tools, resources, and
  prompts, users are able to define automated workflows fully driven by
  LLMs."
- [V] "we demonstrate that industry-leading LLMs may be coerced into using
  MCP tools to compromise an AI developer's system through various
  attacks, such as malicious code execution, remote access control, and
  credential theft."
- [V] Propone MCPSafetyScanner, "the first agentic tool to assess the
  security of an arbitrary MCP server", que genera muestras adversarias a
  partir de las tools y resources del servidor y produce un informe.

Por qué aplica: evidencia empírica de que un servidor MCP mal diseñado es
un vector de ataque; justifica que el servidor del proyecto exponga
**sólo consultas de lectura** acotadas (ERP y predicciones), valide
entradas y exija token. También justifica la decisión de dejar el
asistente conversacional fuera del alcance (los ataques descritos
requieren un agente que ejecute tools de forma autónoma).

### Lewis2020 — RAG (contraste)

```bibtex
@inproceedings{Lewis2020,
  author    = {Lewis, Patrick and Perez, Ethan and Piktus, Aleksandra and Petroni, Fabio and Karpukhin, Vladimir and Goyal, Naman and K{\"u}ttler, Heinrich and Lewis, Mike and Yih, Wen-tau and Rockt{\"a}schel, Tim and Riedel, Sebastian and Kiela, Douwe},
  title     = {Retrieval-Augmented Generation for Knowledge-Intensive {NLP} Tasks},
  booktitle = {Advances in Neural Information Processing Systems 33 ({NeurIPS} 2020)},
  year      = {2020},
  eprint    = {2005.11401},
  eprinttype = {arxiv},
  url       = {https://proceedings.neurips.cc/paper/2020/hash/6b493230205f780e1bc26945df7481e5-Abstract.html}
}
```

Verificación: arXiv 2005.11401 (v4; comment "Accepted at NeurIPS 2020";
12 autores); proceedings.neurips.cc 2020 (título). S2: ~18.000 citas.
Sin DOI oficial de NeurIPS.

Claims (abstract):
- [V] Los LLM preentrenados "store factual knowledge in their parameters",
  pero "their ability to access and precisely manipulate knowledge is
  still limited"; "providing provenance for their decisions and updating
  their world knowledge remain open research problems".
- [V] RAG "combine[s] pre-trained parametric and non-parametric memory for
  language generation": la memoria no paramétrica es "a dense vector index
  of Wikipedia, accessed with a pre-trained neural retriever".
- [V] "RAG models generate more specific, diverse and factual language than
  a state-of-the-art parametric-only seq2seq baseline."

Por qué aplica: contraste para 2.9.2. RAG inyecta documentos recuperados
por similitud; MCP expone **consultas estructuradas** a sistemas
transaccionales (ERP) y a un servicio de predicción, con control de
acceso por token. Para datos tabulares con permisos por usuario, el
patrón tool/consulta es más adecuado que indexar el ERP en vectores. Hou
§2.1 también lista RAG entre los enfoques previos. No afirmar "RAG no
sirve para ERP": el paper no lo dice; sólo describe qué hace RAG.

---

## Opcionales verificadas

### OAuth21draft — The OAuth 2.1 Authorization Framework

```bibtex
@techreport{OAuth21draft,
  author      = {Hardt, Dick and Parecki, Aaron and Lodderstedt, Torsten},
  title       = {The {OAuth} 2.1 Authorization Framework},
  type        = {Internet-Draft},
  number      = {draft-ietf-oauth-v2-1-13},
  institution = {IETF OAuth Working Group},
  year        = {2025},
  month       = {5},
  url         = {https://datatracker.ietf.org/doc/html/draft-ietf-oauth-v2-1-13},
  urldate     = {2026-09-17}
}
```
Verificado en ietf.org/archive/id/draft-ietf-oauth-v2-1-13.txt: autores
Hardt (Hellō), Parecki (Okta), Lodderstedt (SPRIND); 28 May 2025; "Intended
status: Standards Track". Claim [V] (abstract): "enables an application to
obtain limited access to a protected resource, either on behalf of a
resource owner…". Es la referencia que la spec MCP cita como base; los
detalles OAuth van en 2.8. Nota: es un *draft* (expira 2025-11-29); la spec
2026-07-28 ya cita también el -14 en la sección de refresh tokens.

### RFC9728 — OAuth 2.0 Protected Resource Metadata

```bibtex
@techreport{RFC9728,
  author      = {Jones, Michael B. and Hunt, Phil and Parecki, Aaron},
  title       = {{OAuth} 2.0 Protected Resource Metadata},
  type        = {RFC},
  number      = {9728},
  institution = {IETF},
  year        = {2025},
  doi         = {10.17487/RFC9728},
  url         = {https://www.rfc-editor.org/rfc/rfc9728.html}
}
```
Verificado: título por curl a rfc-editor.org. **Autores y fecha (abril
2025) los sé de memoria, no los verifiqué en esta pasada** — confirmar en
la cabecera del RFC al cargar en Zotero. Claim [V-meta]: define el
documento `/.well-known/oauth-protected-resource` que la spec MCP obliga
a servir al servidor MCP.

### RFC8707 — Resource Indicators for OAuth 2.0

```bibtex
@techreport{RFC8707,
  author      = {Campbell, Brian and Bradley, John and Sakimura, Nat},
  title       = {Resource Indicators for {OAuth} 2.0},
  type        = {RFC},
  number      = {8707},
  institution = {IETF},
  year        = {2020},
  doi         = {10.17487/RFC8707},
  url         = {https://www.rfc-editor.org/rfc/rfc8707.html}
}
```
Verificado: título por curl. Autores/fecha de memoria (feb. 2020),
confirmar en cabecera. Claim [V-meta]: parámetro `resource` que liga el
token a su audiencia; es la norma que Keycloak **no** implementa según su
guía (Keycloak2026MCP), de ahí el workaround del audience mapper.

### Anthropic2025AAIF — anuncio de Anthropic (duplicado del blog MCP)

URL verificada por búsqueda web:
`https://www.anthropic.com/news/donating-the-model-context-protocol-and-establishing-of-the-agentic-ai-foundation`
(no la abrí; el blog oficial del proyecto, MCPBlog2025AAIF, ya cubre el
claim). Usar sólo si se prefiere la fuente de Anthropic.

---

## Notas para el redactor

### Keys: existentes vs. nuevas

- **Ya en `documento.bib`:** ninguna de estas keys (no revisé el archivo
  para otras entradas sobre MCP; si hay alguna, comparar antes de cargar).
- **Nuevas (cargar por Zotero):** MCPSpec2026, MCPSpec2025, JSONRPC2013,
  Anthropic2024MCP, MCPBlog2025AAIF, Hou2025, Ehtesham2025, Schick2023,
  Qin2024, Patil2024, Radosevich2025, Keycloak2026MCP, Lewis2020;
  opcionales OAuth21draft, RFC9728, RFC8707.

### 1. Qué versión de la spec citar

La vigente hoy es **2026-07-28** (no 2025-06-18, que el encargo daba como
ejemplo). Entre ambas hay cambios de fondo: 2026-07-28 es *stateless*
(sin `initialize` ni `Mcp-Session-Id`), deprecó Sampling/Roots/Logging y
la Dynamic Client Registration, y añadió `server/discover`. Las
definiciones de host/cliente/servidor y de las tres primitivas del
servidor son **idénticas** en ambas, así que 2.9.1 se puede redactar con
la vigente sin riesgo. Recomendación: citar MCPSpec2026 para definiciones
y autorización, y decir en Cap. IV qué revisión implementa el SDK que se
use (los SDK suelen ir una revisión atrás). Si el servidor se construye
con un SDK que negocia 2025-06-18 o 2025-11-25, citar MCPSpec2025 para
transporte y ciclo de vida (`initialize`, sesión) y advertir que la
revisión vigente lo cambió.

### 2. Transporte del proyecto

Con el servidor en Docker, consumido por clientes remotos y con Keycloak,
el transporte que corresponde es **Streamable HTTP**, porque la sección
Authorization "defines the authorization flow for HTTP-based transports"
y para stdio dice SHOULD NOT (credenciales por entorno). No afirmar que
stdio "no soporta autenticación": la spec sólo dice que el flujo OAuth no
aplica.

### 3. "No token passthrough": consecuencia de diseño

La spec obliga a que el servidor MCP valide el token (firma, audiencia
= URL canónica del servidor MCP, expiración) y **prohíbe reenviar ese
mismo token** al ERP (NestJS) o a FastAPI. En el brief del proyecto (§2)
dice "SSO central […] lo validan ERP, FastAPI y MCP", lo cual es
compatible, pero implica que el servidor MCP, al llamar al ERP, debe usar
**otro token** (p. ej. client credentials propio del servidor MCP, o token
exchange de Keycloak). Cómo se resuelva es decisión de Cap. IV; en 2.9.2
basta enunciar la regla y citar la sección. No inventar cuál mecanismo se
usa hasta que esté decidido.

### 4. Keycloak y RFC 8707

La guía oficial de Keycloak dice que **no soporta Resource Indicators**.
Redactar 2.9.2 con esa honestidad: la validación de audiencia se logra
con un client scope + Audience mapper que pone la URL del servidor MCP en
`aud`. El cliente MCP igual manda `resource` (la spec lo obliga "regardless
of whether authorization servers support it"). Verificar contra la versión
de Keycloak desplegada; las tablas de cumplimiento cambian entre releases.

### 5. Claims sin fuente verificada (no afirmar sin cita)

1. **"Problema N×M"** (N modelos × M herramientas): la expresión aparece en
   material divulgativo de MCP, pero **no** la verifiqué en la spec ni en
   el anuncio (que dice "Every new data source requires its own custom
   implementation") ni en Ehtesham2025 (que no la usa). Si se quiere usar,
   redactarla como paráfrasis de Anthropic2024MCP y Hou2025 §2.1/Fig. 1
   ("specific APIs" vs. "unified interface"), sin las letras N×M.
2. **"MCP es el USB-C de la IA"**: metáfora de la documentación de
   modelcontextprotocol.io, no de la spec. Evitar en un documento
   académico o citar la página de docs si se insiste.
3. **"Function calling"** como término: ninguna fuente verificada define
   la feature de proveedor (OpenAI/Anthropic "function calling / tool
   use"). La cadena respaldable es: *tool use* en investigación
   (Schick2023, Patil2024, Qin2024: el modelo decide qué API llamar y con
   qué argumentos) → MCP estandariza cómo se **describen y ejecutan** esas
   herramientas del lado servidor (MCPSpec, Hou2025 §2.1, Ehtesham2025
   §4.4). Si el redactor quiere nombrar la API de un proveedor, pedir una
   fuente `@online` puntual (docs de OpenAI/Anthropic).
4. **Clasificación user-/application-/model-controlled** para las tres
   primitivas: la spec sólo dice "model-controlled" para tools; la
   tripleta completa está en Ehtesham2025 §4.4 (y en la doc de
   modelcontextprotocol.io, no verificada aquí). Citar a Ehtesham para la
   tripleta.
5. **Cómo verificar un JWT de Keycloak** (JWKS, `iss`, `aud`, `exp`): no
   está en Keycloak2026MCP. Va en 2.8 con RFC 9068 / OAuth 2.1 §5.2 o la
   doc de Keycloak sobre tokens.
6. **Cifras de adopción** ("97 million monthly SDK downloads, 10,000
   active servers"): autodeclaradas por el blog del proyecto. Citar como
   "según el proyecto".
7. **RFC 9728 / RFC 8707 autores y fechas**: no verificados en esta pasada
   (sólo títulos). Zotero los completa desde el DOI 10.17487/RFCxxxx.

### 6. Correcciones al encargo

- El arXiv de "MCP Safety Audit" es **2504.03767**, no 2504.03111.
- Hou et al. ya no es sólo preprint: **TOSEM 35(10), 2026**, DOI
  10.1145/3796519.
- Toolformer en proceedings tiene 9 autores (agrega Hambro); el arXiv v1
  tiene 8.
- Gorilla se publicó en **NeurIPS 2024**, no 2023 (arXiv es 2023).
- ToolLLM: venue ICLR 2024 sólo verificado por Semantic Scholar.

### 7. Relación con confidencialidad (brief §6)

Las tools sobre el ERP no deben exponer nómina, contratos con montos ni
datos personales. Respaldo normativo: MCPSpec "Servers MUST: Validate all
tool inputs; Implement proper access controls" y el principio "Data
Privacy". Esto se decide en Cap. IV (qué tools se exponen); en 2.9.2 sólo
enunciar que el protocolo delega el control de acceso al servidor y que
el proyecto lo resuelve con scopes de Keycloak.

### 8. Fuera de alcance, no investigado

Protocolos agente-a-agente (A2A, ACP, ANP), construcción de agentes o
asistentes, Sampling/Elicitation del lado cliente, MCP Apps, Tasks. Si el
redactor los menciona, sólo como "trabajo futuro" citando Ehtesham2025
(hoja de ruta por fases) y MCPSpec2026 (extensiones).
