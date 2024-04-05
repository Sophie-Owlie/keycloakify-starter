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
              color: #02072C;
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
                            <img src="${url.resourcesUrl}/img/mypack_logo.png" alt="MyPack Logo">
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