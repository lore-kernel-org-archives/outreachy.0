X-GM-THRID: 6527357137219223552
X-Received: by 10.200.42.150 with SMTP id b22mr2929950qta.43.1519963959792;
        Thu, 01 Mar 2018 20:12:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.20.141 with SMTP id l13ls790371qtj.8.gmail; Thu, 01 Mar
 2018 20:12:39 -0800 (PST)
X-Received: by 10.200.24.114 with SMTP id n47mr3013722qtk.0.1519963959025;
        Thu, 01 Mar 2018 20:12:39 -0800 (PST)
Received: by 10.55.154.76 with SMTP id c73msqke;
        Tue, 27 Feb 2018 14:52:28 -0800 (PST)
X-Google-Smtp-Source: AH8x224SHtDHDPswkIv/LcThPX8kK8MfGFZ3JTcL+Y3GM/6rihpwH148x/4fDLj5/P8g4tFxe50f
X-Received: by 10.28.10.65 with SMTP id 62mr1731629wmk.30.1519771947990;
        Tue, 27 Feb 2018 14:52:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519771947; cv=none;
        d=google.com; s=arc-20160816;
        b=Zg7//7tl+DqqOVQdbewDG/CQB1Of6SafWXLj6r1y1ubmHXq2vo41o9fpZRKqlof6nc
         N0C5iDYDy4kmhMCGEv8jrNXXLv6CwxJas8IR9ga+xVe+YADPeppbPSGR9/389XWjQ7yk
         ug3leVYP5vwG7hBTxvqWhNxL/YYKwPOW0PMDG0Oks1OZDcAKBPuHCSFrd+uRiyIn4J7n
         rAwWpc9yZ6x/6W6sG5aYRAL37HevttYPa7MTTOmjMg5k4PLwUT/PRAd7C1YCZ5xuKZ0C
         RGjvLBp9zjAnwo2wsC8CJTI3BgMhe+gZyuzqJEjuyMqhz/sFdR1v3YKsmWpyt5aqBeL4
         wITQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:mime-version:user-agent:date:message-id:organization
         :from:references:cc:to:subject:arc-authentication-results;
        bh=kpEFHm7hI+bcVQs3nTmBAN3fjlegQQc9VySqzc8NkCo=;
        b=GOSMLbqM0TIiEjob+MDYspf1bYPy9UYVGj76/hN44r9j4driekMRXJW7fFWbIlIaj9
         RXe+ADN8K2OaNaoqvISxEzZV4JLJoG4h2mOgsiKfI51a/igWOIwOAPghtce5gMhca0RF
         papA2RKpBUCCMf1bJebSDI+vOgaLiW5rwCyDHaqAw9LaTXeueSH4ZAaWxPWzc5x68sJP
         zJbYwJyWzPqaXM0+3by4eSra4k+oXn0A2qgYjK+YysJ5WEfEqMxqBBGiSuWtAXsSr0ky
         F6EMij0qlB323BLkXh1k9ALcLKatjj3CRxjTb282YA+zg7Tn6GVOSJRWMdxYVtquVsou
         Z3Ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 152.77.200.57 is neither permitted nor denied by domain of nicolas.palix@imag.fr) smtp.mailfrom=Nicolas.Palix@imag.fr
Return-Path: <Nicolas.Palix@imag.fr>
Received: from zm-mta-out-2.u-ga.fr (zm-mta-out-2.u-ga.fr. [152.77.200.57])
        by gmr-mx.google.com with ESMTP id f137si44976wme.0.2018.02.27.14.52.27
        for <outreachy-kernel@googlegroups.com>;
        Tue, 27 Feb 2018 14:52:27 -0800 (PST)
Received-SPF: neutral (google.com: 152.77.200.57 is neither permitted nor denied by domain of nicolas.palix@imag.fr) client-ip=152.77.200.57;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 152.77.200.57 is neither permitted nor denied by domain of nicolas.palix@imag.fr) smtp.mailfrom=Nicolas.Palix@imag.fr
Received: from zm-mta-out.u-ga.fr (zm-mta-out.u-ga.fr [152.77.200.58])
	by zm-mta-out-2.u-ga.fr (Postfix) with ESMTP id D37D1603DC;
	Tue, 27 Feb 2018 23:52:30 +0100 (CET)
Received: from smtps.univ-grenoble-alpes.fr (smtps2.u-ga.fr [195.83.24.202])
	by zm-mta-out.u-ga.fr (Postfix) with ESMTP id C78ADE0095;
	Tue, 27 Feb 2018 23:52:31 +0100 (CET)
Received: from yttrium-1.home (LFbn-1-8100-167.w90-112.abo.wanadoo.fr [90.112.245.167])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: palixn@univ-grenoble-alpes.fr)
	by smtps.univ-grenoble-alpes.fr (Postfix) with ESMTPSA id 6FFB66049D;
	Tue, 27 Feb 2018 23:52:27 +0100 (CET)
Subject: Re: [PATCH] Coccinelle: memdup: Fix typo in warning messages
To: Dafna Hirschfeld <dafna3@gmail.com>, Julia.Lawall@lip6.fr,
 Gilles.Muller@lip6.fr, michal.lkml@markovi.net
Cc: outreachy-kernel@googlegroups.com
References: <20180227215914.GA4522@gmail.com>
From: "Nicolas Palix (LIG)" <Nicolas.Palix@imag.fr>
Organization: UJF Polytech / LIG Erods
Message-ID: <bc93cb52-11cc-0076-fb36-022951720589@imag.fr>
Date: Tue, 27 Feb 2018 23:52:26 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20180227215914.GA4522@gmail.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms080707010009060007030405"
X-Greylist: Whitelist-UGA SMTP Authentifie (palixn@univ-grenoble-alpes.fr) via submission-587 ACL (99)

This is a cryptographically signed message in MIME format.

--------------ms080707010009060007030405
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable

Le 27/02/2018 =C3=A0 22:59, Dafna Hirschfeld a =C3=A9crit=C2=A0:
> Replace 'kmemdep' with 'kmemdup' in warning messages.
>=20
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
Acked-by: Nicolas Palix <nicolas.palix@imag.fr>
> ---
>   scripts/coccinelle/api/memdup.cocci | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/scripts/coccinelle/api/memdup.cocci b/scripts/coccinelle/a=
pi/memdup.cocci
> index 1249b72..8fd6437 100644
> --- a/scripts/coccinelle/api/memdup.cocci
> +++ b/scripts/coccinelle/api/memdup.cocci
> @@ -56,10 +56,10 @@ statement S;
>   p << r.p;
>   @@
>  =20
> -coccilib.org.print_todo(p[0], "WARNING opportunity for kmemdep")
> +coccilib.org.print_todo(p[0], "WARNING opportunity for kmemdup")
>  =20
>   @script:python depends on report@
>   p << r.p;
>   @@
>  =20
> -coccilib.report.print_report(p[0], "WARNING opportunity for kmemdep")
> +coccilib.report.print_report(p[0], "WARNING opportunity for kmemdup")
>=20


--=20
Nicolas Palix
http://lig-membres.imag.fr/palix/


--------------ms080707010009060007030405
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: Signature cryptographique S/MIME

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCC
CG8wggO2MIICnqADAgECAgEDMA0GCSqGSIb3DQEBBQUAMCwxCzAJBgNVBAYTAkZSMQ0wCwYD
VQQKEwRDTlJTMQ4wDAYDVQQDEwVDTlJTMjAeFw0wOTAxMjEwOTAzNTJaFw0yOTAxMjAwOTAz
NTJaMDUxCzAJBgNVBAYTAkZSMQ0wCwYDVQQKEwRDTlJTMRcwFQYDVQQDEw5DTlJTMi1TdGFu
ZGFyZDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJypZGq0ByMZw74ICMTiKl3t
1Cje/j+g7ZJEaxZHNRM3jXSp9U2D5AUbjwhhTN53W9ep/7tlncmsPA/xiXuTIqBHD18Gvo54
oAt510JlYXJjkkCKW2cQ+tYnPth3TR55229LEgBSWOLYQgWyMzd34I1sHbz49vKUWCX3gtmG
2Vzz2C7N/XCJBIfvOdEq2JKMaS8cUmX6YI8Qf8yP+VwuFO1Mi+CdN7jSPJTKUP1Bet72POyu
7L1cFt2w8HOZeoH/OzPSAJ5NjMZbOC4zw3aGynJU2y3iEP2SUGiThO13qYlpUYXr4JSj+ZcI
EYwk8A+6OLQs1tdsTmP+tDGf74+mWqUCAwEAAaOB2TCB1jAPBgNVHRMBAf8EBTADAQH/MB0G
A1UdDgQWBBQR49nRUkcbWbE8G3hma/ShiO0KWzBUBgNVHSMETTBLgBRQl7YN96wzF6/xHUY8
azv/AKDl5aEwpC4wLDELMAkGA1UEBhMCRlIxDTALBgNVBAoTBENOUlMxDjAMBgNVBAMTBUNO
UlMyggEAMA4GA1UdDwEB/wQEAwIBBjA+BgNVHR8ENzA1MDOgMaAvhi1odHRwOi8vY3Jscy5z
ZXJ2aWNlcy5jbnJzLmZyL0NOUlMyL2dldGRlci5jcmwwDQYJKoZIhvcNAQEFBQADggEBAE/p
4xfmTCf1F2pQVeruz0yqve4s3XY+WaAvC2iJ2kPQHh0saxL5ZxOeZSukhNIxz4Kgyu8i6BBs
6c8XfKyth4VMiuHVe0zm2Q6yoeQpniCvDz57uX8kTDLgiP562qwWYKF1romcimadlLp+qw4g
I+33x4RdgkgU3sTUsMVOLIfUjQMRLzbVKW+umWcZDI1tWiDf0Z/Gy69V7gvKsVsP71x09PNG
iWNHfizOv8gwDQBG9hjmbD8wfpBuEI0fOUnPk2nryJ7CZ3OvSov2fEIo3aXd7a/JVRtkP1S8
YSYQ65HV6ffu0PYLC/qmkN1g9ECdC6ec+M4vITj+qwa/2g13+mcwggSxMIIDmaADAgECAgMA
sYYwDQYJKoZIhvcNAQEFBQAwNTELMAkGA1UEBhMCRlIxDTALBgNVBAoTBENOUlMxFzAVBgNV
BAMTDkNOUlMyLVN0YW5kYXJkMB4XDTE2MDMzMTE0MzczN1oXDTE4MDMzMTE0MzczN1owbDEL
MAkGA1UEBhMCRlIxDTALBgNVBAoTBENOUlMxEDAOBgNVBAsTB1VNUjUyMTcxFjAUBgNVBAMT
DU5pY29sYXMgUGFsaXgxJDAiBgkqhkiG9w0BCQEWFU5pY29sYXMuUGFsaXhAaW1hZy5mcjCC
ASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAOrXeKVCpb7MjlNJjUttPdthNS7GvU/h
TZezIPCzuM73eHIpYNVx0qVsnP6fTzAc+7i7a/hAcTM2XChLkm+tzpbWJ44CNoQ9+OCgMW+3
6sRS1Kv66bz1qKqxj4hXnWoGga/ND4bbMmtS0tG+LZ0jpqk5p2K01DU12XnmQ5zi5O+eV0i1
ERLJkJd+m9duJOCa9tni/b05Lcs2LClfYFrmr1cMvGPmy0UguRYrlWjQrMKddLLmMgo8cv4n
GebpUfcgo3WmOz4BxKjNzj551Quy2QVtg3gYvuUEtNW88ONofmJ3+wr++ialKRPZM0C1MaCN
c6HJ//GVMWldxs0dQLrqUs8CAwEAAaOCAZEwggGNMAwGA1UdEwEB/wQCMAAwEQYJYIZIAYb4
QgEBBAQDAgSwMA4GA1UdDwEB/wQEAwIF4DB6BglghkgBhvhCAQ0EbRZrQ2VydGlmaWNhdCBD
TlJTMi1TdGFuZGFyZC4gUG91ciB0b3V0ZSBpbmZvcm1hdGlvbiBzZSByZXBvcnRlciDgIGh0
dHA6Ly9pZ2Muc2VydmljZXMuY25ycy5mci9DTlJTMi1TdGFuZGFyZC8wHQYDVR0OBBYEFLd6
+Ifph9Z/6Ky//jQzMhNtCru7MFQGA1UdIwRNMEuAFBHj2dFSRxtZsTwbeGZr9KGI7QpboTCk
LjAsMQswCQYDVQQGEwJGUjENMAsGA1UEChMEQ05SUzEOMAwGA1UEAxMFQ05SUzKCAQMwIAYD
VR0RBBkwF4EVTmljb2xhcy5QYWxpeEBpbWFnLmZyMEcGA1UdHwRAMD4wPKA6oDiGNmh0dHA6
Ly9jcmxzLnNlcnZpY2VzLmNucnMuZnIvQ05SUzItU3RhbmRhcmQvZ2V0ZGVyLmNybDANBgkq
hkiG9w0BAQUFAAOCAQEAhowl+iLEKBtHY1ygh+luUrBwA/a0PnqnR4Ih92ywgJZ+8yawSpuw
p3pqgXAi0WVqWN5fIYZII954W4XwUAedKxdBvOqLXfI1XwwnkhZ09icVWPJX0JZUBfVtKE9x
7sYtD5sknfFNX8dOoy88B1USDVw9BCoOdFr6fMOB+hmneZ/v+Wdj2RTir3IY6xDocwTAfJ4n
DdngikVPugfoUyNWR04J1bD9AVj2tNsZIu5cMgsj6ZISpRYHstB7LBx9Ya1zScctTGAT2fup
DiiEzqGjJcUSZUMuuvJmIR6v4toqr03yxR90yCn0eiLJOXtHGqOogAaXIGGDHGMS6KIU2hM8
CTGCAt4wggLaAgEBMDwwNTELMAkGA1UEBhMCRlIxDTALBgNVBAoTBENOUlMxFzAVBgNVBAMT
DkNOUlMyLVN0YW5kYXJkAgMAsYYwDQYJYIZIAWUDBAIBBQCgggFzMBgGCSqGSIb3DQEJAzEL
BgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE4MDIyNzIyNTIyNlowLwYJKoZIhvcNAQkE
MSIEIHP7kL8DEtAaoOmgFXNtLLHqmCAbi+ZSWL/NgANiQsvcMEsGCSsGAQQBgjcQBDE+MDww
NTELMAkGA1UEBhMCRlIxDTALBgNVBAoTBENOUlMxFzAVBgNVBAMTDkNOUlMyLVN0YW5kYXJk
AgMAsYYwTQYLKoZIhvcNAQkQAgsxPqA8MDUxCzAJBgNVBAYTAkZSMQ0wCwYDVQQKEwRDTlJT
MRcwFQYDVQQDEw5DTlJTMi1TdGFuZGFyZAIDALGGMGwGCSqGSIb3DQEJDzFfMF0wCwYJYIZI
AWUDBAEqMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZI
hvcNAwICAUAwBwYFKw4DAgcwDQYIKoZIhvcNAwICASgwDQYJKoZIhvcNAQEBBQAEggEA0/y5
hlLSfim6zyrptG41ZCrVsP/noFGKLjkLemXNmbNqSaXNf3zdpwBBBkACs79UkXaEgrAdWoMC
tWlfMInXtUqeUEZIVMYRYn9oegwk2RowMwb6ehVqub5JiL7FpeNdCgEIeWAWOFEz88qg6DWo
fHQ11Bx+h4/hB960Yc3wG3VJj5mIQdBJf6OZjchrrfcJ7tg3HlDHtI5a/RvLnmlU0hqo9twE
xRwpKREVB61wwGKCamd6XlLtlP+1DA48q8FMovjibTCi9Ko0yCy+pxVRukppEAUumzPjxu1y
11DKz2sjRyka2sWf23mtn5lkLfen31IMcnBb56z6yYCSbWUvzAAAAAAAAA==
--------------ms080707010009060007030405--

