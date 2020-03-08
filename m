X-GM-THRID: 6801781024772587520
X-Received: by 2002:a5d:8741:: with SMTP id k1mr9609333iol.30.1583663053223;
        Sun, 08 Mar 2020 03:24:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:ce82:: with SMTP id r2ls1738003ilo.7.gmail; Sun, 08 Mar
 2020 03:24:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv8j7pAL0Quc1g6FCG2ipqmU9VY1S7ulOUskpCm6hiFxPZwYLydkb3xrPWjysKo8j++MKoJ
X-Received: by 2002:a92:c50e:: with SMTP id r14mr11302403ilg.52.1583663051868;
        Sun, 08 Mar 2020 03:24:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583663051; cv=none;
        d=google.com; s=arc-20160816;
        b=A2TACVYffiv3Wwe0irOP+YMT3TAXVVuqBBPJ3ZklVn1wIRXomtFWcv2OPnMo2rPKXJ
         rWtQeYWBYLQw96BOJCiGEnAP9sQ++B1ZUY6qiBQpjKFBEDngRKxIUhFzt+tpm2dwC16h
         BSwbzoQKgIg6QDWvBJJiA0WrOV6zAJW6G4IdSZFHQ5coI+k5pGrmUChMlKFsZlbKi/Bj
         vLJQxbPItr3ahCC52kbGXUETzFVW2xt8fqKO+OUuFiCPrskPf5ASTnc1n+8IBHZQX2V4
         K33yiTrYX+6rpoZ01IAe2U9rJzQEDygeJjNyleA2RxqLPGXLOGCVV1XHKhGXQxHOgNgS
         b4tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Da6L4ClIyjAYf7VrN4yVO0SksCN9MZQRQkpIVg0Vh2M=;
        b=PLFBG9ZiCgouhiJ/a628141zbv45sdLeAVIVS3IuKxdYSLKYDsgZBpZ8fBVBBNAZcN
         4ccTRbTgbpOD0xvE6gexOsQjWh3yZqFaoCGXstBdusYclkK7TJemxkiJ+UneVNxmZfBE
         EcKMibEW9CghTc4t3v4v3H4P6/hEnhEhc0XXwiQ8AcgJFvNTGEUsqXweYU/FD9wamFDj
         N782F8nPJkfO2iFdR6oPbPR8yKG9Mz+bFLW77ZhuWVTuAsgp9eeFzwcs6pPkY2HzLYt6
         /pzRjLOabiP0H8+7HSuBXK8Zuulsx0AeoDEcnob+ATWsfRKTr8UxQyb1jT8BEkAXpO4Q
         N9gA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RY9adKtF;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com. [2607:f8b0:4864:20::d2e])
        by gmr-mx.google.com with ESMTPS id e7si298354iof.4.2020.03.08.03.24.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 03:24:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) client-ip=2607:f8b0:4864:20::d2e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RY9adKtF;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd2e.google.com with SMTP id k4so6363881ior.4
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 03:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Da6L4ClIyjAYf7VrN4yVO0SksCN9MZQRQkpIVg0Vh2M=;
        b=RY9adKtFMk+M3Dax3T//mr/fv3N0MScluPt24AbINPqN4Aoe5FIlDLywxeVzW0fmiT
         94sqBB5kkTrQpkFVWpB+blfAGmdoSKz2vvNyVoK05jgSDq6ByE9xA8+FFUWW8UdAA/fV
         2ob9ES3PsgBWdrQ4vlVjvdgYPhIiuq/0DWJ448+tkUalQ8QNxo6doMglQmiie5jH6ex3
         z/rpyJx0GSYDzBWLBwTtDaXQD+KKMKsHfduMX6ZuVdluk3J68uj6hA4U6AiDtWATJIos
         cZBm8B9ghCSzlVKMZRsxUNfXSMe3SsnkfV2apxjuOP1cK1ftxJTy4gVH3pKrYUI7oBUk
         MLcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Da6L4ClIyjAYf7VrN4yVO0SksCN9MZQRQkpIVg0Vh2M=;
        b=JBtsLXVjmOqkU6XYU4Ux96EFL0yVjGks2kzUrzDvTO/Oojy57aj2dZ0dWSXV1LdGll
         IrF9yLItncrhG35JgxXK1hksYeYUdkCHcZ2/D2mhlVv61GBN8t+fS6iDwiECQ7YR5s81
         MjcA/Yr2a62jh2WIKECUuk4NkAD2XKvzCDpohV3LKGnu0nV0FfyjDxlVvxQ6WxCrNaue
         keAJm0NFe2InTmoj2Z63B6A3ZEq0MAk4VHQdqj+wQ6iKfBt8SKIjVe8Xbm/DrZoU19iv
         f5ujQqM243M4KwIFJTtvgN3PXHIB4lDAnUuh420/pZqb5UU4s7W/w1CDjSuHRg155Ch6
         NjaQ==
X-Gm-Message-State: ANhLgQ0+6QxlARPiqYgW11hCIniIG+QpBRwtiJdfBkJeFJoplNrE3tmp
	HgyAdOo+A7RVNuGO0/x1VnH2rPViRI9MZ0zw5dPLxg==
X-Received: by 2002:a05:6602:cb:: with SMTP id z11mr9428406ioe.57.1583663051230;
 Sun, 08 Mar 2020 03:24:11 -0700 (PDT)
MIME-Version: 1.0
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sun, 8 Mar 2020 15:53:58 +0530
Message-ID: <CANTOzWF=FTWsMtRXZnvPZAkLAkOPqJ9bpXtHPeD6OH00a1ZkUQ@mail.gmail.com>
Subject: Sending patches using other Email address?
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000009cd24b05a0554917"

--0000000000009cd24b05a0554917
Content-Type: text/plain; charset="UTF-8"

Due to some security issues with my email ID(The email address which is
associated with my outreachy account) I am not able to send patches neither
using mutt nor git send-email using that email ID.
Can I send patches using other email ID and record those patches for the
outreachy account having different email address?
Will those contributions be considered or not?

Please help:)

Payal

--0000000000009cd24b05a0554917
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Due to some security issues with my email ID(The email ad=
dress which is associated with my outreachy account) I am not able to send =
patches neither using mutt nor git send-email using that email ID.<div dir=
=3D"auto">Can I send patches using other email ID and record those patches =
for the outreachy account having different email address?</div><div dir=3D"=
auto">Will those contributions be considered or not?</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">Please help:)</div><div dir=3D"auto"><br></div=
><div dir=3D"auto">Payal<br><div dir=3D"auto"><br></div></div></div>

--0000000000009cd24b05a0554917--

