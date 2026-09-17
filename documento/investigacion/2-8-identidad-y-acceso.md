# Brief de investigación — 2.8 Gestión de Identidad y Acceso (Cap. II)

Fecha: 2026-09-17. Investigador. Verificación: texto íntegro de cada RFC en
rfc-editor.org + metadatos en datatracker.ietf.org (categoría, páginas,
BCP); HTML oficial de OpenID Connect Core en openid.net; Internet-Draft de
OAuth 2.1 en ietf.org; CrossRef (DOI) para los dos papers; Open Library
(ISBN) y repositorio oficial de Packt en GitHub para el libro; curl a
keycloak.org (HTTP 200, cadena de versión) y GitHub Releases para Keycloak.
Todo lo que no pude verificar está marcado. Las entradas BibLaTeX son
candidatas: se cargan por Zotero (`documento/09-setup-zotero.md`), no a mano.

Resumen: 12 fuentes núcleo (todas verificadas) + 2 opcionales verificadas.
Ninguna de las keys existe todavía en `documento.bib`. Ver "Notas para el
redactor" al final.

Convención de claims: **[V]** = verificado en el texto de la fuente (cito
sección exacta); **[V-cap]** = verificado a nivel de capítulo/índice, no
leí el cuerpo.

Convención BibLaTeX para RFC: uso `@techreport` con `type = {RFC}` /
`type = {Internet-Draft}`, `institution = {Internet Engineering Task Force}`
y `number`. Biblatex-ieee y otros estilos lo renderizan bien; si el estilo
del documento prefiere `@online`, el cambio es mecánico (mantener `url` y
`urldate`). Las URL canónicas son `https://www.rfc-editor.org/rfc/rfcNNNN`
(datatracker sirve para verificar estado, no como URL de cita).

---

## 2.8.1 OAuth 2.0 y OpenID Connect

### RFC6749

```bibtex
@techreport{RFC6749,
  author      = {Hardt, Dick},
  editor      = {Hardt, Dick},
  title       = {The {OAuth} 2.0 Authorization Framework},
  type        = {RFC},
  number      = {6749},
  institution = {Internet Engineering Task Force},
  year        = {2012},
  month       = oct,
  doi         = {10.17487/RFC6749},
  url         = {https://www.rfc-editor.org/rfc/rfc6749},
  urldate     = {2026-09-17},
  note        = {Proposed Standard; obsoletes RFC 5849}
}
```

Verificación: rfc-editor.org/rfc/rfc6749.txt (cabecera: D. Hardt, Ed.,
Microsoft, octubre 2012, Standards Track, Obsoletes 5849); datatracker:
Proposed Standard, 76 pp. El DOI 10.17487/RFCnnnn es el patrón oficial de
RFC Editor para todas las RFC (no lo resolví por CrossRef en esta pasada;
es de conocimiento general del RFC Editor — si Zotero no lo resuelve,
omitir el campo `doi` y dejar la URL).

Claims:
- [V] Abstract: "The OAuth 2.0 authorization framework enables a
  third-party application to obtain limited access to an HTTP service,
  either on behalf of a resource owner by orchestrating an approval
  interaction between the resource owner and the HTTP service, or by
  allowing the third-party application to obtain access on its own
  behalf."
- [V] §1.1 "Roles": cuatro roles — *resource owner* ("An entity capable
  of granting access to a protected resource. When the resource owner is
  a person, it is referred to as an end-user"), *resource server* ("The
  server hosting the protected resources, capable of accepting and
  responding to protected resource requests using access tokens"),
  *client* ("An application making protected resource requests on behalf
  of the resource owner and with its authorization") y *authorization
  server* ("The server issuing access tokens to the client after
  successfully authenticating the resource owner and obtaining
  authorization"). Y, clave para el proyecto: "A single authorization
  server may issue access tokens accepted by multiple resource servers."
- [V] §1.3: "This specification defines four grant types -- authorization
  code, implicit, resource owner password credentials, and client
  credentials -- as well as an extensibility mechanism".
- [V] §1.3.1 "Authorization Code": el cliente redirige al resource owner
  al authorization server, que lo autentica y devuelve un código; "the
  resource owner's credentials are never shared with the client"; ventajas:
  autenticar al cliente y entregar el access token directamente al cliente
  "without passing it through the resource owner's user-agent".
- [V] §1.3.2 "Implicit": flujo simplificado para clientes en navegador;
  el access token se emite directamente; "the authorization server does
  not authenticate the client" y el token "may be exposed to the resource
  owner or other applications with access to the resource owner's
  user-agent".
- [V] §1.3.4 y §4.4 "Client Credentials": se usa "when the client is
  acting on its own behalf (the client is also the resource owner)";
  "The client credentials grant type MUST only be used by confidential
  clients."
- [V] §1.4 "Access Token": "credentials used to access protected
  resources. An access token is a string representing an authorization
  issued to the client. The string is usually opaque to the client";
  puede ser un identificador de referencia o "self-contain the
  authorization information in a verifiable manner (i.e., a token string
  consisting of some data and a signature)".
- [V] §1.5 "Refresh Token": credenciales para obtener nuevos access
  tokens cuando el actual expira; su emisión es opcional.
- [V] §2.1 "Client Types": *confidential* (capaz de mantener en secreto
  sus credenciales, p. ej. en un servidor) vs. *public* (p. ej. "an
  installed native application or a web browser-based application").
- [V] §7.1: el tipo de token "bearer" definido en RFC 6750 se usa
  incluyendo el token en la cabecera `Authorization: Bearer ...`.

Por qué aplica: fuente primaria y normativa de todo 2.8.1. Los cuatro roles
mapean 1:1 al proyecto — Keycloak = authorization server; usuario del ERP =
resource owner; Angular = cliente público; NestJS, FastAPI y el servidor
MCP = resource servers (§1.1: un mismo AS emite tokens aceptados por
varios RS, que es exactamente el argumento del SSO central). Client
credentials (§4.4) es el grant para las llamadas máquina-a-máquina
(NestJS → FastAPI, Power BI → API NestJS).

### RFC6750

```bibtex
@techreport{RFC6750,
  author      = {Jones, Michael B. and Hardt, Dick},
  title       = {The {OAuth} 2.0 Authorization Framework: Bearer Token Usage},
  type        = {RFC},
  number      = {6750},
  institution = {Internet Engineering Task Force},
  year        = {2012},
  month       = oct,
  doi         = {10.17487/RFC6750},
  url         = {https://www.rfc-editor.org/rfc/rfc6750},
  urldate     = {2026-09-17},
  note        = {Proposed Standard}
}
```

Verificación: rfc-editor (M. Jones, Microsoft; D. Hardt, Independent;
octubre 2012; Standards Track); datatracker: Proposed Standard, 18 pp.

Claims:
- [V] §1.2 definición: "Bearer Token: A security token with the property
  that any party in possession of the token (a 'bearer') can use the token
  in any way that any other party in possession of it can. Using a bearer
  token does not require a bearer to prove possession of cryptographic key
  material (proof-of-possession)."
- [V] Abstract: "To prevent misuse, bearer tokens need to be protected
  from disclosure in storage and in transport."
- [V] §2: tres métodos de envío; "Clients MUST NOT use more than one
  method"; §2.1: "Clients SHOULD make authenticated requests with a bearer
  token using the 'Authorization' request header field with the 'Bearer'
  HTTP authorization scheme. Resource servers MUST support this method."
- [V] §5.2 "Threat Mitigation": proteger el contenido del token con firma
  digital o MAC; incluir la audiencia ("the identity of the intended
  recipients (the audience), typically a single resource server") para
  evitar redirección de tokens; "The authorization server MUST implement
  TLS."

Por qué aplica: define cómo Angular, NestJS (como cliente de FastAPI) y el
cliente MCP presentan el token a cada resource server; el punto de la
audiencia (§5.2) justifica configurar en Keycloak audiencias distintas
para ERP, FastAPI y MCP.

### RFC7519

```bibtex
@techreport{RFC7519,
  author      = {Jones, Michael B. and Bradley, John and Sakimura, Nat},
  title       = {{JSON} {Web} {Token} ({JWT})},
  type        = {RFC},
  number      = {7519},
  institution = {Internet Engineering Task Force},
  year        = {2015},
  month       = may,
  doi         = {10.17487/RFC7519},
  url         = {https://www.rfc-editor.org/rfc/rfc7519},
  urldate     = {2026-09-17},
  note        = {Proposed Standard}
}
```

Verificación: rfc-editor (M. Jones, Microsoft; J. Bradley, Ping Identity;
N. Sakimura, NRI; mayo 2015; Standards Track); datatracker: Proposed
Standard, 30 pp.

Claims:
- [V] §1: "JSON Web Token (JWT) is a compact claims representation format
  intended for space constrained environments such as HTTP Authorization
  headers and URI query parameters. JWTs encode claims to be transmitted
  as a JSON object that is used as the payload of a JSON Web Signature
  (JWS) structure or as the plaintext of a JSON Web Encryption (JWE)
  structure, enabling the claims to be digitally signed or integrity
  protected with a Message Authentication Code (MAC) and/or encrypted."
- [V] §2: "Claim: A piece of information asserted about a subject",
  representado como par nombre/valor.
- [V] §4.1 "Registered Claim Names": `iss` (Issuer), `sub` (Subject),
  `aud` (Audience), `exp` (Expiration Time), `nbf` (Not Before), `iat`
  (Issued At), `jti` (JWT ID) — §4.1.1 a §4.1.7.
- [V] §6 "Unsecured JWTs": existe el `alg: none`; el receptor debe
  rechazarlo salvo que el contenido esté protegido por otro medio (el
  texto de §6 lo permite "MAY"; la prohibición práctica está en RFC 8725,
  no verificada aquí — no afirmar "prohibido" citando 7519).
- [V-cap] §7.2 "Validating a JWT": existe una sección con los pasos de
  validación (no transcribí los pasos; confirmar en el PDF antes de
  enumerarlos).

Por qué aplica: el ERP hoy emite JWT propios (Passport); Keycloak emite
JWT firmados (ver KeycloakSecuringApps). Esta RFC permite explicar qué es
un JWT, qué claims estándar trae (`iss`, `sub`, `aud`, `exp`) y por qué
la validación local por firma es posible sin llamar al emisor.

### RFC7636

```bibtex
@techreport{RFC7636,
  author      = {Sakimura, Nat and Bradley, John and Agarwal, Naveen},
  editor      = {Sakimura, Nat},
  title       = {Proof Key for Code Exchange by {OAuth} Public Clients},
  type        = {RFC},
  number      = {7636},
  institution = {Internet Engineering Task Force},
  year        = {2015},
  month       = sep,
  doi         = {10.17487/RFC7636},
  url         = {https://www.rfc-editor.org/rfc/rfc7636},
  urldate     = {2026-09-17},
  note        = {Proposed Standard}
}
```

Verificación: rfc-editor (N. Sakimura, Ed., Nomura Research Institute;
J. Bradley, Ping Identity; N. Agarwal, Google; septiembre 2015; Standards
Track); datatracker: Proposed Standard, 20 pp.

Claims:
- [V] Abstract: "OAuth 2.0 public clients utilizing the Authorization
  Code Grant are susceptible to the authorization code interception
  attack. This specification describes the attack as well as a technique
  to mitigate against the threat through the use of Proof Key for Code
  Exchange (PKCE, pronounced 'pixy')."
- [V] §1: el atacante intercepta el código "within a communication path
  not protected by Transport Layer Security (TLS), such as
  inter-application communication within the client's operating system";
  "Once the attacker has gained access to the authorization code, it can
  use it to obtain the access token."
- [V] §4.1–4.6 (títulos verificados): el cliente crea un `code_verifier`
  (§4.1), deriva un `code_challenge` (§4.2), lo envía en la petición de
  autorización (§4.3), el servidor devuelve el código (§4.4), el cliente
  envía código + `code_verifier` al token endpoint (§4.5) y el servidor
  verifica el `code_verifier` antes de emitir tokens (§4.6).

Por qué aplica: el frontend Angular es un cliente público (RFC 6749 §2.1);
PKCE es el mecanismo que hace seguro el authorization code flow sin
secreto de cliente. RFC 9700 lo vuelve obligatorio (abajo).

### RFC8252

```bibtex
@techreport{RFC8252,
  author      = {Denniss, William and Bradley, John},
  title       = {{OAuth} 2.0 for Native Apps},
  type        = {RFC},
  number      = {8252},
  institution = {Internet Engineering Task Force},
  year        = {2017},
  month       = oct,
  doi         = {10.17487/RFC8252},
  url         = {https://www.rfc-editor.org/rfc/rfc8252},
  urldate     = {2026-09-17},
  note        = {Best Current Practice (BCP 212); updates RFC 6749}
}
```

Verificación: rfc-editor (W. Denniss, Google; J. Bradley, Ping Identity;
BCP 212; Updates 6749; octubre 2017); datatracker: Best Current Practice,
21 pp.

Claims:
- [V] Abstract: "OAuth 2.0 authorization requests from native apps should
  only be made through external user-agents, primarily the user's
  browser."
- [V] §6: las apps nativas usan "the authorization code grant type per
  Section 4.1 of OAuth 2.0 [RFC6749]".
- [V] §8.1: con esquemas URI privados "multiple apps can typically
  register the same scheme", lo que habilita la intercepción del código
  descrita en RFC 7636 §1.
- [V] §8.12 (título verificado): "Embedded User-Agents" — existe una
  sección que desaconseja webviews embebidos (no transcribí el cuerpo).

Por qué aplica: fuente secundaria. El proyecto no tiene app nativa; sirve
sólo para mostrar que "authorization code + PKCE vía agente de usuario
externo" es la práctica recomendada por el IETF para cualquier cliente
público, y por extensión para la SPA Angular. Si el redactor necesita
recortar, es la primera RFC prescindible.

### RFC9700

```bibtex
@techreport{RFC9700,
  author      = {Lodderstedt, Torsten and Bradley, John and Labunets, Andrey and Fett, Daniel},
  title       = {Best Current Practice for {OAuth} 2.0 Security},
  type        = {RFC},
  number      = {9700},
  institution = {Internet Engineering Task Force},
  year        = {2025},
  month       = jan,
  doi         = {10.17487/RFC9700},
  url         = {https://www.rfc-editor.org/rfc/rfc9700},
  urldate     = {2026-09-17},
  note        = {Best Current Practice (BCP 240); updates RFC 6749, 6750, 6819}
}
```

Verificación: rfc-editor (T. Lodderstedt, SPRIND; J. Bradley, Yubico;
A. Labunets, Independent Researcher; D. Fett, Authlete; BCP 240; Updates
6749, 6750, 6819; enero 2025); datatracker: Best Current Practice, 46 pp.

Claims:
- [V] Abstract: "It updates and extends the threat model and security
  advice given in RFCs 6749, 6750, and 6819 to incorporate practical
  experiences gathered since OAuth 2.0 was published [...] Further, it
  deprecates some modes of operation that are deemed less secure or even
  insecure."
- [V] §2.1.1 "Authorization Code Grant": "Public clients MUST use PKCE
  [RFC7636]"; "For confidential clients, the use of PKCE [RFC7636] is
  RECOMMENDED"; "Authorization servers MUST support PKCE [RFC7636]";
  "Although PKCE was designed as a mechanism to protect native apps, this
  advice applies to all kinds of OAuth clients, including web
  applications"; "Currently, S256 is the only such method" (método de
  challenge que no expone el verifier).
- [V] §2.1.2 "Implicit Grant": "clients SHOULD NOT use the implicit grant
  (response type token)"; "Clients SHOULD instead use the response type
  code (i.e., authorization code grant type)".
- [V] §2.4: "The resource owner password credentials grant [RFC6749] MUST
  NOT be used. This grant type insecurely exposes the credentials of the
  resource owner to the client."
- [V] §2.3 "Access Token Privilege Restriction": "access tokens SHOULD be
  audience-restricted to a specific resource server [...] every resource
  server is obliged to verify, for every request, whether the access token
  sent with that request was meant to be used for that particular resource
  server. If it was not, the resource server MUST refuse to serve the
  respective request."
- [V] §2.2.1: se recomiendan tokens *sender-constrained* (mTLS RFC 8705 o
  DPoP RFC 9449) — el proyecto no los implementa; citar sólo como
  "recomendación no adoptada / trabajo futuro" si se menciona.

Por qué aplica: es la fuente que justifica las decisiones de diseño: (1)
Angular usa authorization code + PKCE S256 y no implicit; (2) el ERP deja
de recibir usuario/contraseña directamente (el ROPC está prohibido, y el
login propio con Passport es funcionalmente lo mismo); (3) FastAPI y MCP
verifican `aud` en cada petición.

### OAuth21Draft

```bibtex
@techreport{OAuth21Draft,
  author      = {Hardt, Dick and Parecki, Aaron and Lodderstedt, Torsten},
  title       = {The {OAuth} 2.1 Authorization Framework},
  type        = {Internet-Draft},
  number      = {draft-ietf-oauth-v2-1-16},
  institution = {Internet Engineering Task Force, OAuth Working Group},
  year        = {2026},
  month       = sep,
  url         = {https://datatracker.ietf.org/doc/draft-ietf-oauth-v2-1/},
  urldate     = {2026-09-17},
  note        = {Work in progress; expires 2027-03-07}
}
```

Verificación: datatracker (draft-ietf-oauth-v2-1-16, 3 de septiembre de
2026, Active Internet-Draft, WG Document, expira 7 de marzo de 2027;
autores D. Hardt (Hellō), A. Parecki (Okta), T. Lodderstedt (SPRIND));
texto en ietf.org/archive/id/draft-ietf-oauth-v2-1-16.txt. **Es un
borrador, no un estándar**: citarlo como tal y con el número de revisión;
puede cambiar antes de la defensa.

Claims:
- [V] §10 "Differences from OAuth 2.0": "This draft consolidates the
  functionality in OAuth 2.0 [RFC6749], OAuth 2.0 for Native Apps
  [RFC8252], Proof Key for Code Exchange [RFC7636], OAuth 2.0 for
  Browser-Based Apps, OAuth Security Best Current Practice [RFC9700], and
  Bearer Token Usage [RFC6750]."
- [V] §10, lista de cambios: "The authorization code grant is extended
  with the functionality from PKCE [RFC7636] such that the default method
  of using the authorization code grant according to this specification
  requires the addition of the PKCE parameters"; "The Implicit grant
  (response_type=token) is omitted"; "The Resource Owner Password
  Credentials grant is omitted"; "Bearer token usage omits the use of
  bearer tokens in the query string of URIs"; "The PKCE plain method is
  removed".
- [V] §10.1: el implicit se quita porque los tokens emitidos en la
  respuesta de autorización "are vulnerable to leakage and injection, and
  are unable to be sender-constrained to a client".

Por qué aplica: muestra la dirección del estándar: lo que el proyecto
adopta (code + PKCE, sin implicit, sin ROPC) es el "OAuth 2.0 seguro" que
OAuth 2.1 consolida. Útil como cierre de 2.8.1 en una o dos oraciones.

### OIDCCore2014

```bibtex
@techreport{OIDCCore2014,
  author      = {Sakimura, Nat and Bradley, John and Jones, Michael B. and de Medeiros, Breno and Mortimore, Chuck},
  title       = {{OpenID} {Connect} {Core} 1.0 incorporating errata set 2},
  type        = {Final Specification},
  institution = {OpenID Foundation},
  year        = {2023},
  month       = dec,
  url         = {https://openid.net/specs/openid-connect-core-1_0.html},
  urldate     = {2026-09-17},
  note        = {Versión original: 8 de noviembre de 2014; errata set 1: 8 de noviembre de 2014; errata set 2: 15 de diciembre de 2023}
}
```

Verificación: HTML oficial en openid.net (título "OpenID Connect Core 1.0
incorporating errata set 2", fecha 15 de diciembre de 2023, estado
"Final", autores Sakimura (NAT.Consulting), Bradley (Yubico), Jones
(Self-Issued Consulting), de Medeiros (Google), Mortimore (Disney)).
**Ojo con el año**: la spec original es de 2014 (por eso el encargo dice
"2014"), pero el documento vivo que se lee hoy es la errata set 2 de
2023. Recomiendo `year = {2023}` con la nota, o bien `year = {2014}` +
`note = {Errata set 2, 2023}`; elegir una y ser consistente. El extractor
de WebFetch dio "errata set 1 de noviembre 2014" y "Final febrero 2014";
las fechas exactas de las versiones anteriores no las verifiqué en el
HTML — dejar sólo "2014" para la original si no se confirma.

Claims:
- [V] Abstract y §1: "OpenID Connect 1.0 is a simple identity layer on top
  of the OAuth 2.0 protocol. It enables Clients to verify the identity of
  the End-User based on the authentication performed by an Authorization
  Server, as well as to obtain basic profile information about the
  End-User in an interoperable and REST-like manner."
- [V] §1 (autorización vs. autenticación): RFC 6749 y 6750 "define
  mechanisms to obtain and use Access Tokens to access resources but do
  not define standard methods to provide identity information. Notably,
  without profiling OAuth 2.0, it is incapable of providing information
  about the authentication of an End-User." Y: "OpenID Connect implements
  authentication as an extension to the OAuth 2.0 authorization process.
  Use of this extension is requested by Clients by including the openid
  scope value in the Authorization Request."
- [V] §1: terminología — "OAuth 2.0 Authentication Servers implementing
  OpenID Connect are also referred to as OpenID Providers (OPs). OAuth 2.0
  Clients using OpenID Connect are also referred to as Relying Parties
  (RPs)."
- [V] §1.3 "Overview": cinco pasos — RP envía Authentication Request al
  OP; OP autentica al usuario y obtiene autorización; OP responde con ID
  Token y Access Token; RP llama al UserInfo Endpoint con el Access Token;
  UserInfo devuelve claims del usuario.
- [V] §2 "ID Token": "The primary extension that OpenID Connect makes to
  OAuth 2.0 to enable End-Users to be Authenticated is the ID Token data
  structure. The ID Token is a security token that contains Claims about
  the Authentication of an End-User by an Authorization Server [...] The
  ID Token is represented as a JSON Web Token (JWT)." Claims obligatorios:
  `iss`, `sub` ("A locally unique and never reassigned identifier within
  the Issuer for the End-User"), `aud` ("MUST contain the OAuth 2.0
  client_id of the Relying Party"), `exp`, `iat`.
- [V] §3: tres flujos — 3.1 Authorization Code Flow, 3.2 Implicit Flow,
  3.3 Hybrid Flow. §3.1: "The Authorization Code Flow returns an
  Authorization Code to the Client, which can then exchange it for an ID
  Token and an Access Token directly. This provides the benefit of not
  exposing any tokens to the User Agent".
- [V] §3.1.3.7 "ID Token Validation": "Clients MUST validate the ID
  Token"; el `iss` "MUST exactly match"; el `aud` debe contener el
  `client_id`; "The ID Token MUST be rejected if the ID Token does not
  list the Client as a valid audience".

Por qué aplica: es la fuente para la distinción autorización (OAuth) vs.
autenticación (OIDC) y para el SSO: Keycloak es el OP; Angular/NestJS son
RPs; el ID Token es lo que reemplaza el "login" propio del ERP.

### Fett2016

```bibtex
@inproceedings{Fett2016,
  author    = {Fett, Daniel and K{\"u}sters, Ralf and Schmitz, Guido},
  title     = {A Comprehensive Formal Security Analysis of {OAuth} 2.0},
  booktitle = {Proceedings of the 2016 {ACM} {SIGSAC} Conference on Computer and Communications Security ({CCS} '16)},
  pages     = {1204--1215},
  publisher = {ACM},
  address   = {Vienna, Austria},
  year      = {2016},
  doi       = {10.1145/2976749.2978385}
}
```

Verificación: CrossRef DOI (título, tres autores, CCS'16 Viena, pp.
1204–1215, ACM, publicado 2016-10-24); abstract vía arXiv 1601.01229
(versión extendida, v4 de agosto 2016).

Claims:
- [V] Abstract: primer análisis formal extensivo de OAuth 2.0 "in an
  expressive web model"; cubre "all four OAuth grant types"; considera
  despliegues simultáneos con múltiples proveedores y relying parties,
  incluidos maliciosos.
- [V] Abstract: en el proceso descubrieron "four previously unknown
  attacks" que rompen la seguridad; proponen correcciones y prueban que,
  con ellas, OAuth 2.0 cumple propiedades de "authorization,
  authentication, and session integrity".
- No verificado con el abstract: los nombres de los ataques (307
  redirect, IdP mix-up, state leak, naïve RP session integrity) están en
  el cuerpo del paper, no en el abstract. Citar por nombre sólo tras leer
  el PDF (la versión arXiv es abierta).

Por qué aplica: respaldo académico (no sólo normativo) de que OAuth 2.0 es
seguro **si se implementa con las mitigaciones**; es el argumento para no
"inventar" un esquema propio y adoptar un proveedor que ya incorpora las
correcciones (varias de estas mitigaciones son las que RFC 9700 vuelve
obligatorias; Fett es coautor de RFC 9700).

### Almeida2022

```bibtex
@article{Almeida2022,
  author  = {G{\'o}es de Almeida, Murilo and Canedo, Edna Dias},
  title   = {Authentication and Authorization in Microservices Architecture: {A} Systematic Literature Review},
  journal = {Applied Sciences},
  volume  = {12},
  number  = {6},
  pages   = {3023},
  year    = {2022},
  doi     = {10.3390/app12063023}
}
```

Verificación: CrossRef DOI (título, dos autores, Applied Sciences 12(6),
art. 3023, publicado 2022-03-16, abstract completo).

Claims:
- [V] Abstract: en microservicios "there are several applications running
  independently and must be secured individually"; los servicios se
  comunican "sometimes in a trust relationship. In this way, unauthorized
  access to a specific microservice could compromise an entire system."
- [V] Abstract: "To face the problems, mechanisms such as OAuth 2.0,
  OpenID Connect, API Gateway and JWT are used."
- [V] Abstract: hay pocos estudios, "especially in practical order".
- No verificado directamente (viene de resúmenes de terceros en la
  búsqueda web, no del abstract): el conteo de menciones "OAuth 2.0 (16),
  JWT (14), API Gateway (14), SSO (8), OIDC (7)". Está en el cuerpo del
  artículo (open access en mdpi.com); confirmar antes de citar cifras.

Por qué aplica: el proyecto pasa de un monolito con JWT propio a varios
servicios (NestJS, FastAPI, MCP) que deben validar la misma identidad. Es
la fuente para decir que la combinación OAuth 2.0 + OIDC + JWT es el
mecanismo documentado en la literatura para ese escenario.

---

## 2.8.2 Keycloak

### KeycloakServerAdmin

```bibtex
@online{KeycloakServerAdmin,
  author  = {{Keycloak Project}},
  title   = {Server Administration Guide},
  organization = {Keycloak},
  version = {26.7.4},
  year    = {2026},
  url     = {https://www.keycloak.org/docs/latest/server_admin/index.html},
  urldate = {2026-09-17}
}
```

Verificación: curl → HTTP 200; la página imprime "26.7.4" (243 veces,
cadena de versión en el encabezado); GitHub Releases: tag 26.7.4
publicado 2026-09-16. La portada keycloak.org/documentation (HTTP 200)
lista las guías (Server Administration, Securing Applications and
Services, Authorization Services, …) y describe a Keycloak como "a Cloud
Native Computing Foundation incubation project". Dado que `docs/latest`
cambia con cada release, anotar la versión leída en `version` y la
`urldate`.

Claims (sección "Keycloak features and concepts" → "Core concepts and
terms", texto verificado):
- [V] Definición: "Keycloak is a single sign on solution for web apps and
  RESTful web services. The goal of Keycloak is to make security simple so
  that it is easy for application developers to secure the apps and
  services they have deployed in their organization. Security features
  that developers normally have to write for themselves are provided out
  of the box".
- [V] "Basic Keycloak operations": "Keycloak is a separate server that you
  manage on your network. Applications are configured to point to and be
  secured by this server. Keycloak uses open protocol standards like
  OpenID Connect or SAML 2.0 to secure your applications."
- [V] *authentication*: "The process of identifying and validating a
  user"; *authorization*: "The process of granting access to a user".
- [V] *realms*: "A realm manages a set of users, credentials, roles, and
  groups. A user belongs to and logs into a realm. Realms are isolated
  from one another and can only manage and authenticate the users that
  they control."
- [V] *clients*: "Clients are entities that can request Keycloak to
  authenticate a user. Most often, clients are applications and services
  that want to use Keycloak to secure themselves and provide a single
  sign-on solution. Clients can also be entities that just want to request
  identity information or an access token so that they can securely invoke
  other services on the network that are secured by Keycloak."
- [V] *client adapters*: "Client adapters are plugins that you install
  into your application environment to be able to communicate and be
  secured by Keycloak." Y en "Features": "Supports any platform/language
  that has an OpenID Connect Relying Party library or SAML 2.0 Service
  Provider library."
- [V] *roles*: "Roles identify a type or category of user. Admin, user,
  manager, and employee are all typical roles [...] Applications often
  assign access and permissions to specific roles rather than individual
  users"; *user role mapping*: "This role mapping information can be
  encapsulated into tokens and assertions so that applications can decide
  access permissions on various resources they manage."
- [V] *composite roles*: "A composite role is a role that can be
  associated with other roles."
- [V] *identity provider*: "An identity provider (IDP) is a service that
  can authenticate a user. Keycloak is an IDP." *identity provider
  federation*: Keycloak puede delegar la autenticación a otros IdP OIDC o
  SAML.
- [V] Otros términos del glosario (resumidos por WebFetch, no
  transcritos): *user federation provider* (LDAP/Active Directory),
  *groups*, *client scopes*, *sessions*, *service accounts* ("Built-in
  client capabilities allowing access token acquisition").

Por qué aplica: fuente primaria para todo 2.8.2 (qué es, realms, clientes,
roles, adaptadores). El claim de "role mapping [...] encapsulated into
tokens" es el que permite explicar cómo NestJS/FastAPI/MCP autorizan por
rol leyendo el JWT sin consultar a Keycloak. Nota importante: los
"adaptadores" propios de Keycloak (Node.js, Java) fueron retirados en
versiones recientes; hoy la guía dice usar cualquier librería OIDC RP —
el proyecto debería usar `openid-client`/`passport-jwt` en NestJS, PyJWT o
similar en FastAPI, y `angular-oauth2-oidc` o `keycloak-js` en Angular.
Esto último (nombres de librerías) es sugerencia mía, no está en la
fuente.

### KeycloakSecuringApps

```bibtex
@online{KeycloakSecuringApps,
  author  = {{Keycloak Project}},
  title   = {Securing applications and services with {OpenID} {Connect}},
  organization = {Keycloak},
  version = {26.7.4},
  year    = {2026},
  url     = {https://www.keycloak.org/securing-apps/oidc-layers},
  urldate = {2026-09-17}
}
```

Verificación: curl → HTTP 200; la página muestra "release 26.7.4" (el
extractor también leyó "Nightly", que es el selector de versión de la
página, no la versión del texto). La URL antigua
`docs/latest/securing_apps/index.html` devuelve **404**: no usarla.

Claims (texto verificado):
- [V] "As a fully-compliant OpenID Connect Provider implementation,
  Keycloak exposes a set of endpoints that applications and services can
  use to authenticate and authorize their users." Endpoint de
  descubrimiento: `/realms/{realm-name}/.well-known/openid-configuration`.
- [V] Grant types soportados: Authorization Code ("redirects the user
  agent to Keycloak [...] The application then uses the authorization code
  along with its credentials to obtain an Access Token, Refresh Token and
  ID Token"), Client Credentials ("This flow is not included in OpenID
  Connect, but is a part of the OAuth 2.0 specification"), Device
  Authorization Grant, CIBA; Implicit y ROPC listados como desaconsejados.
- [V] "Keycloak issued access tokens are JSON Web Tokens (JWT) digitally
  signed and encoded using JSON Web Signature (JWS). Because they are
  encoded in this way, you can locally validate access tokens using the
  public key of the issuing realm. You can either hard code the realm's
  public key in your validation code, or lookup and cache the public key
  using the certificate endpoint with the Key ID (KID) embedded within the
  JWS." El párrafo previo advierte que validar contra el introspection
  endpoint en cada petición "can be slow and possibly overload the server".
- [V] Certificate endpoint `/realms/{realm-name}/protocol/openid-connect/certs`:
  "returns the public keys enabled by the realm, encoded as a JSON Web Key
  (JWK)". Introspection endpoint
  `/realms/{realm-name}/protocol/openid-connect/token/introspect`: "used to
  retrieve the active state of a token".
- [V] "Redirect URIs": "The redirect uris should be as specific as
  possible. This especially applies to client-side (public clients)
  applications".

Por qué aplica: es la fuente para el argumento técnico central de 2.8.2 —
un IdP central emite JWT firmados que **cada** servicio (NestJS, FastAPI,
MCP) valida localmente con la clave pública del realm (JWKS), sin acoplarse
al ERP ni llamar a Keycloak en cada request. Y para decir que Keycloak
implementa nativamente los dos grants que usa el proyecto (code+PKCE para
personas, client credentials para servicios).

### Thorgersen2023

```bibtex
@book{Thorgersen2023,
  author    = {Thorgersen, Stian and Silva, Pedro Igor},
  title     = {Keycloak -- Identity and Access Management for Modern Applications},
  subtitle  = {Harness the power of {Keycloak}, {OpenID} {Connect}, and {OAuth} 2.0 to secure applications},
  edition   = {2},
  publisher = {Packt Publishing},
  address   = {Birmingham},
  year      = {2023},
  isbn      = {9781804616444}
}
```

Verificación: Open Library ISBN 9781804616444 (Packt Publishing, 2023,
título y subtítulo exactos; ISBN 9781804612613 es el ebook, listado bajo
"de Gruyter"); repositorio oficial
github.com/PacktPublishing/Keycloak---Identity-and-Access-Management-for-Modern-Applications-2nd-Edition
(README: "Second Edition", autores, subtítulo, e índice de 14 capítulos).
La 1.ª ed. es 2021, ISBN 9781800562493 (no usar). Página de Packt: 403;
Google Books API sin resultado; **mes de publicación y número de páginas
no verificados** (Amazon/AbeBooks aparecen en la búsqueda pero no los
consulté) — dejar sólo el año. Stian Thorgersen y Pedro Igor Silva son
mantenedores del proyecto Keycloak (Red Hat); ese dato es de conocimiento
general, no verificado aquí.

Índice verificado (README): 1 Getting Started with Keycloak · 2 Securing
Your First Application · 3 Brief Introduction to Standards · 4
Authenticating Users with OpenID Connect · 5 Authorizing Access with OAuth
2.0 · 6 Securing Different Application Types · 7 Integrating Applications
with Keycloak · 8 Authorization Strategies · 9 Configuring Keycloak for
Production · 10 Managing Users · 11 Authenticating Users · 12 Managing
Tokens and Sessions · 13 Extending Keycloak · 14 Securing Keycloak and
Applications.

Claims:
- [V-cap] Cap. 1: realms, users, groups, roles; instalación con Docker
  (resumen del README).
- [V-cap] Cap. 2: app de ejemplo frontend + backend REST; "The ID token is
  used to identify authenticated users, while the access token carries
  permissions required for invoking protected backend services"; "The
  backend validates these tokens"; control de acceso por roles leídos del
  access token.
- [V-cap] Cap. 3: OAuth 2.0 para acceso sin compartir credenciales; "OpenID
  Connect builds upon OAuth 2.0, adding authentication capabilities. It
  supports single sign-on (SSO)"; JWT como formato de access token por
  "interoperability, JSON-based format, and direct-read capability"; SAML
  2.0 como alternativa madura para empresa.
- [V-cap] Cap. 4: flujo OIDC, estructura del ID token, refresh, client
  scopes y protocol mappers, logout (back-channel/front-channel).
- [V-cap] Cap. 5 "Authorizing Access with OAuth 2.0", cap. 6 "Securing
  Different Application Types", cap. 9 "Configuring Keycloak for
  Production": sólo títulos verificados.
- [V] README, "New Edition v/s Previous Edition": la 2.ª ed. cubre la
  distribución basada en Quarkus y "Spring Security replaces the older
  Spring Adapter" — confirma que los adaptadores propietarios de Keycloak
  fueron reemplazados por librerías estándar.

Por qué aplica: única monografía sobre Keycloak escrita por sus
mantenedores; sirve para citar la explicación "de libro" de realms,
clientes, roles y de cómo un backend valida tokens (cap. 2), y para el
argumento SSO (cap. 3) sin depender sólo de documentación en línea.

---

## Opcionales verificadas

### RFC9068 — JWT como formato de access token (2.8.1)

```bibtex
@techreport{RFC9068,
  author      = {Bertocci, Vittorio},
  title       = {{JSON} {Web} {Token} ({JWT}) Profile for {OAuth} 2.0 Access Tokens},
  type        = {RFC},
  number      = {9068},
  institution = {Internet Engineering Task Force},
  year        = {2021},
  month       = oct,
  url         = {https://www.rfc-editor.org/rfc/rfc9068},
  urldate     = {2026-09-17},
  note        = {Proposed Standard}
}
```
Verificado en rfc-editor (V. Bertocci, Auth0, octubre 2021, Standards
Track) y datatracker (Proposed Standard). Claim [V] (abstract): "defines a
profile for issuing OAuth 2.0 access tokens in JSON Web Token (JWT)
format. Authorization servers and resource servers from different vendors
can leverage this profile to issue and consume access tokens in an
interoperable manner." Útil para cerrar el hueco entre RFC 6749 §1.4 (el
access token "is usually opaque to the client") y la práctica de Keycloak
(access token = JWT firmado): RFC 6749 no fija formato; RFC 9068 lo
perfila. RFC 9700 §2.3 lo cita para el claim `aud`.

### RFC7662 — Token Introspection (2.8.2)

Sólo metadatos verificados (datatracker: "OAuth 2.0 Token Introspection",
Proposed Standard, 17 pp.; 2015, autor J. Richer — autor/año no leídos
del texto, confirmar antes de cargar). Es la RFC que implementa el
introspection endpoint de Keycloak. Citar sólo si el redactor contrasta
validación local (JWKS) vs. introspección remota; si no, omitir.

---

## Notas para el redactor

### Keys: existentes vs. nuevas

- **Ya en `documento.bib`:** ninguna de este brief (las 13 keys actuales
  son de ERP, ML, EPC, Medallion e ingeniería de software).
- **Nuevas (cargar por Zotero):** RFC6749, RFC6750, RFC7519, RFC7636,
  RFC8252, RFC9700, OAuth21Draft, OIDCCore2014, Fett2016, Almeida2022,
  KeycloakServerAdmin, KeycloakSecuringApps, Thorgersen2023; opcionales
  RFC9068, RFC7662.
- Zotero importa RFC bien con el traductor de datatracker.ietf.org o con
  el BibTeX del propio RFC Editor
  (`https://www.rfc-editor.org/refs/bibxml/reference.RFC.6749.xml` /
  `datatracker.ietf.org/doc/rfc6749/bibtex/`): ese BibTeX oficial usa
  `@misc` con `series = {Request for Comments}`, `howpublished = {RFC
  6749}`, `publisher = {RFC Editor}` y `doi`. Cualquiera de los dos
  formatos sirve; lo que importa es no mezclarlos entre las seis RFC.

### Mapa sugerido de claims → estructura de 2.8 (sin redactar)

- **Autenticación vs. autorización:** KeycloakServerAdmin (definiciones de
  una línea) + OIDCCore2014 §1 ("OAuth [...] is incapable of providing
  information about the authentication of an End-User").
- **Roles OAuth y mapeo al proyecto:** RFC6749 §1.1 (incluida la frase
  "A single authorization server may issue access tokens accepted by
  multiple resource servers").
- **Tipos de cliente:** RFC6749 §2.1 → Angular = público; NestJS/FastAPI/
  MCP como clientes de otros servicios = confidenciales.
- **Authorization code + PKCE:** RFC6749 §1.3.1/§4.1 + RFC7636 abstract y
  §4 + RFC9700 §2.1.1 ("Public clients MUST use PKCE"; S256).
- **Client credentials:** RFC6749 §1.3.4/§4.4 (sólo confidenciales) +
  KeycloakSecuringApps (soportado; "not included in OpenID Connect").
- **Por qué no implicit ni ROPC (= por qué no login propio):** RFC6749
  §1.3.2 + RFC9700 §2.1.2 y §2.4 + OAuth21Draft §10.
- **Tokens:** RFC6749 §1.4–1.5; bearer RFC6750 §1.2/§2.1; JWT RFC7519
  §1/§4.1; (opcional RFC9068 para "access token como JWT").
- **Audiencia por servicio:** RFC6750 §5.2 + RFC9700 §2.3 + OIDCCore2014
  §3.1.3.7.
- **SSO / OIDC:** OIDCCore2014 §1, §1.3, §2, §3.
- **Seguridad probada formalmente:** Fett2016.
- **Microservicios:** Almeida2022.
- **Keycloak (qué es, realms, clientes, roles, adaptadores, IdP):**
  KeycloakServerAdmin; validación local por JWKS: KeycloakSecuringApps;
  libro: Thorgersen2023 caps. 1–4.

### Claims sin fuente verificada (no afirmar sin cita o buscar una)

1. **"Passport/JWT propio es inseguro"**: ninguna fuente lo dice de
   Passport en particular. Lo que sí está respaldado: (a) el ERP recibe
   usuario/contraseña en su propio endpoint, que es el patrón que RFC 9700
   §2.4 prohíbe para OAuth (ROPC) por exponer credenciales y no soportar
   MFA/WebAuthn; (b) con varios servicios, cada uno tendría que validar un
   secreto compartido o confiar en el ERP (Almeida2022: "unauthorized
   access to a specific microservice could compromise an entire system").
   Redactar el argumento como comparación de propiedades, no como
   "Passport es inseguro".
2. **Nombres de los cuatro ataques de Fett2016** (mix-up, 307 redirect,
   etc.): en el cuerpo, no en el abstract. Leer el PDF (arXiv 1601.01229)
   antes de nombrarlos.
3. **Conteos de menciones de Almeida2022** (OAuth 16, JWT 14, …): vienen
   de resúmenes de terceros; confirmar en el artículo (open access).
4. **Pasos de validación de JWT (RFC 7519 §7.2)**: sección verificada por
   título; no transcribí los pasos.
5. **`alg: none` "prohibido"**: RFC 7519 §6 lo permite en casos
   especiales; la recomendación de rechazarlo está en RFC 8725 (JWT Best
   Current Practices), que no verifiqué. No atribuir a 7519.
6. **Librerías concretas** (openid-client, PyJWT, angular-oauth2-oidc,
   keycloak-js): sugerencia mía, sin fuente. Presentarlas como decisión de
   implementación en Cap. IV, no como "recomendación de Keycloak".
7. **Mes y páginas de Thorgersen2023**: no verificados; dejar sólo año.
8. **Retiro de los adaptadores Keycloak para Node.js**: la doc actual dice
   "Supports any platform/language that has an OpenID Connect Relying
   Party library" y el libro (README) confirma el reemplazo del adaptador
   Spring; la deprecación formal del adaptador Node.js no la verifiqué
   (estaría en Release Notes). Si se menciona, decir "Keycloak recomienda
   librerías OIDC estándar" y citar KeycloakServerAdmin, sin fecha.
9. **Tokens sender-constrained (mTLS/DPoP)**: RFC9700 §2.2.1 los
   recomienda; el proyecto no los implementa. Si se mencionan, va en
   limitaciones/trabajo futuro, no como parte del diseño.

### Fuentes descartadas / no encontradas

- CrossRef devolvió 429 en la primera llamada a Fett2016; reintento con
  User-Agent identificado funcionó. No afecta al resultado.
- No busqué fuentes sobre SAML 2.0: Keycloak lo soporta pero el proyecto
  usa sólo OIDC (brief §4). Si el redactor quiere una oración de contraste,
  Thorgersen2023 cap. 3 lo cubre.
