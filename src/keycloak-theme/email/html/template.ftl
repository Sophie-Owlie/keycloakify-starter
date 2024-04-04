<#macro emailLayout>
<html>
<head>
</head>
<body>

<table
  role="presentation"
  border="0"
  cellpadding="0"
  cellspacing="0"
  style="
    border-collapse: separate;
    min-width: 100%;
    background-color: #3177ff;
    width: 100%;
    padding: 5rem;
  "
>
  <tbody>
    <tr>
      <td
        style="
          font-family: sans-serif;
          font-size: 14px;
          vertical-align: top;
          display: block;
          max-width: 580px;
          padding: 10px;
          width: 580px;
          margin: 0 auto;
        "
        width="580"
        valign="top"
      >
        <div
          style="
            box-sizing: border-box;
            display: block;
            margin: 0 auto;
            max-width: 580px;
            padding: 10px;
          "
        >
          <table
            role="presentation"
            style="
              box-shadow: rgba(0, 0, 0, 0.3) 60px 60px 40px -7px;
              border-collapse: separate;
              min-width: 100%;
              background: #ffffff;
              border-radius: 5px;
              width: 100%;
            "
            width="100%"
          >
            <tbody>
              <tr>
                <td
                  style="
                    font-family: sans-serif;
                    font-size: 14px;
                    vertical-align: top;
                    box-sizing: border-box;
                    padding: 20px;
                  "
                  valign="top"
                >
                  <div style="padding: 20px 0">
                    <table
                      role="presentation"
                      border="0"
                      cellpadding="0"
                      cellspacing="0"
                      style="
                        border-collapse: separate;
                        min-width: 100%;
                        width: 100%;
                      "
                      width="100%"
                    >
                      <tbody>
                        <tr>
                          <td style="font-family: sans-serif; font-size: 14px; vertical-align: top; text-align: center;" valign="top" align="center">
                            <img src="${url.resourcesUrl}/img/mypack_logo.png" alt="MyPack Logo PNG">
                            <img src="${url.resourcesUrl}/img/logo.jpg" alt="MyPack Logo JPG">
                            <img src="${url.resourcesPath}/img/mypack_logo.png" alt="MyPack Logo PNG path">
                            <img src="${url.resourcesPath}/img/logo.jpg" alt="MyPack Logo JPG path">
                            <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M7 12H17M8 8.5C8 8.5 9 9 10 9C11.5 9 12.5 8 14 8C15 8 16 8.5 16 8.5M8 15.5C8 15.5 9 16 10 16C11.5 16 12.5 15 14 15C15 15 16 15.5 16 15.5M21 12C21 16.9706 16.9706 21 12 21C7.02944 21 3 16.9706 3 12C3 7.02944 7.02944 3 12 3C16.9706 3 21 7.02944 21 12Z" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>
                            <img src="data:image/jpeg;base64,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" alt="base64" />
                            <img src="https://auth.mypack-dev.xyz/resources/lqek3/login/keycloakify-starter/build/assets/logo_mypack-C0NnxONJ.svg" alt="MyPack Logo" />
                          </td>
                        </tr>

                        <tr>
                          <td>
                            <p
                              style="
                                font-weight: bold;
                                text-align: center;
                                font-size: 1.1rem;
                              "
                            >
                              <#nested "subject">
                            </p>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>

                  <hr style="opacity: 0.2" />

                  <#if realmName??>
                  <table width="100%" bgcolor="#ffffff" cellspacing="0" cellpadding="15">
                  <tr>
                  <td>
                  <font style="font-size:16px;" size="5"><b>
                  ${realmName}
                  </b></font>
                  </td>
                  </tr>
                  </table>
                  </#if>

                  <#nested "text">

                  <#if link??>
                  <table
                    role="presentation"
                    border="0"
                    cellpadding="0"
                    cellspacing="0"
                    class="m_-4934092667319585505btn-primary"
                    style="
                      border-collapse: separate;
                      box-sizing: border-box;
                      min-width: 100%;
                      width: 100%;
                    "
                    width="100%"
                  >
                    <tbody>
                      <tr>
                        <td
                          align="center"
                          style="
                            font-family: sans-serif;
                            font-size: 14px;
                            vertical-align: top;
                            padding-top: 15px;
                            padding-bottom: 20px;
                          "
                          valign="top"
                        >
                          <table
                            role="presentation"
                            border="0"
                            cellpadding="0"
                            cellspacing="0"
                            style="
                              border-collapse: separate;
                              min-width: auto;
                              width: 100%;
                            "
                          >
                            <tbody>
                              <tr>
                                <td
                                  style="
                                    font-family: sans-serif;
                                    font-size: 14px;
                                    vertical-align: top;
                                    border-radius: 5px;
                                    text-align: center;
                                    background-color: #3758f9;"
                                  valign="top"
                                  align="center"
                                  bgcolor="#3758F9"
                                >
                                  <a href="${link}"
                                    style="
                                      border: solid 1px #3758f9;
                                      border-radius: 5px;
                                      box-sizing: border-box;
                                      display: inline-block;
                                      font-size: 14px;
                                      font-weight: normal;
                                      margin: 0;
                                      padding: 12px 25px;
                                      text-decoration: none;
                                      background-color: #3758f9;
                                      border-color: #3758f9;
                                      color: #ffffff;
                                    "
                                    target="_blank"
                                  >
                                  <#nested "linkText">
                                  </a>
                                </td>
                              </tr>
                            </tbody>
                          </table>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  </#if>

                  <#nested "footer">

                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </td>
    </tr>
  </tbody>
</table>

</body>
</html>
</#macro>