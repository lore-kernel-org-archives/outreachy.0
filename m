X-GM-THRID: 6664617547649777664
X-Received: by 2002:a24:3608:: with SMTP id l8mr383847itl.35.1551727193498;
        Mon, 04 Mar 2019 11:19:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7d8e:: with SMTP id b136ls102379itc.5.canary-gmail; Mon,
 04 Mar 2019 11:19:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqz5p2d6cERXL0EYAGCqC+Gr6NS/9NDTiq6pZE4jvw37ORK4/+WvtB4uf0CmMWZy4udefbQr
X-Received: by 2002:a24:6f55:: with SMTP id x82mr426481itb.13.1551727192718;
        Mon, 04 Mar 2019 11:19:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551727192; cv=none;
        d=google.com; s=arc-20160816;
        b=MWqWWSQVsvOXUyLDLDdUvNgSUubsmByKRQIkU/FW5kUAi94GBNqEry1y7rPFmM4tJk
         e46yFhJCiFluKwURwPXG83VMUUAoujcUfFcVQ8VFEGlxg+Z4QEa6p1XGfpxpQ+B3k44j
         dTdOjIHe/yfphvcu0Lhotx8AUOcu2SP+DTaFgwSzqlHIWonYhAppGn9ujjgC2foe/2Zb
         TnTHOpM+6qwrgUKJIGXBWUgqdK21J8fx6LRPzomWvJCiZlSucAEEUbRJM2FyvsLdEnXe
         61A/v8O1/qpd9LXqJ/WpvqkdJmm70qpR0U8qZTv5vhdENFTVzNZ85V9D2W2FLS4JXErM
         XBWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=OOM6z+lrN26RyCjYbUToDgaAoWJdvdwCgJ4zeBjX5hM=;
        b=WCI/05LnD5ThCLlDTsxnKgH2zk+T6QC6UFQU+VQlUj1Uch2ckqtm4Oq05xpsqrs1d9
         cZF7hMoilc7AYapBiXzh5QsabRGd8t9sImPJkgfbwUHd1DW0U5gdIDGMSUAC3WgM2VKt
         448Q4UZztiG3jjQDGEm5JljtzVsTkLumokJUblF9ExvOxt3PU95OgYV57YOLo9xAOOqg
         M8WSzhWPhmqabeFuUccO/mkJZMU4ztt0hrVpsFhvC69SfOuws5VXI5uM4hMNdZ8m/u23
         2IUVpOimdqkEAMVAtCoBzltZo2LIBqWYqFCd2E6ANSFMslIcB4WXKYzTQaDas12nfgTt
         novA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sSiZPGCW;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com. [2607:f8b0:4864:20::230])
        by gmr-mx.google.com with ESMTPS id u1si450290itb.2.2019.03.04.11.19.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 11:19:52 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) client-ip=2607:f8b0:4864:20::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sSiZPGCW;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x230.google.com with SMTP id b4so4771899oif.6
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 11:19:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=OOM6z+lrN26RyCjYbUToDgaAoWJdvdwCgJ4zeBjX5hM=;
        b=sSiZPGCWnINrPFaRWnBJ1fjG3/+wF4jYOm/f7Tyw0mxPjMGkSiJcE1wO6erDAoJE7q
         5la5WOM98hVPejpn91Xix1rJr0UfBqGuO5CdUGskkkuWO3OQurkYz3rDZ5FOkAZFSnxf
         iROCNRDUP3/MmcpoxW9YFc5FmEosEiRphd3afWeFBk1dbwXUUyMEbGZLWSWv0tP2Rv0K
         a+NXAc0O/FlQp3qB9vuKO/esYIldjgTSfHufrjOx54SY2PVjHuwMoJAuN4rBojGAjDR1
         kxeGepoTfmTG0e+TxtuGmcz1Zb7fWayqaf4UYnmgO9ENxzhn8n1JlMbMg4Ni+hHIa28z
         Gptw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=OOM6z+lrN26RyCjYbUToDgaAoWJdvdwCgJ4zeBjX5hM=;
        b=rfDxQiqaxEd9T3LuGJwgZcy92AkcLICgor8/9V9+5LhnUhdGCn/xCOcwZLp/+Vh4Za
         N5lODP7tB4Keu2QgJqGeje3TvrWTDRwFwH9yYS6katpYr81kK57tVVTciY8RBwJR+uGh
         k5DJbA/iyTLbacbDSDiXeSKgtXXmlTEqwiTVY9xk+OduM4UeyMhrGygSEHTQSestVzyN
         WzHZ9Rq7pGOASp/ttUU6xgPXfN7p5osYCYBptK/ZgmQ+XpCTz/zp0l1Z0VfUmrll9V64
         nCsy+J6+dFdhQESRbXk0x0woKE1CU9PBJXWf15XxoIY510GP2jLfKnylOY1b6BMDzpdP
         jHWg==
X-Gm-Message-State: APjAAAUx6S89xxDlxQzIYA12A2RfJF6EYz+rJon5K+2/4WJjMqy+Z/Sp
	cQ1EBsqfk2yb5JhagGTazawDxqACfTnkzK7eVU/aMKkw5sI=
X-Received: by 2002:aca:c0c2:: with SMTP id q185mr9624472oif.118.1551727192305;
 Mon, 04 Mar 2019 11:19:52 -0800 (PST)
MIME-Version: 1.0
From: Debleena Sen <idebleenasen@gmail.com>
Date: Tue, 5 Mar 2019 00:49:41 +0530
Message-ID: <CACw+u4ENfxYmSmGHaFMZ=rKjjNVvO3P=RezCF8dJEZOnp-xSCA@mail.gmail.com>
Subject: Regarding undocumented string checkpatch.pl warning
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000015f690058349a49a"

--00000000000015f690058349a49a
Content-Type: text/plain; charset="UTF-8"

I came across the following warning in drivers/staging/wilc1000/wilc_spi.c

WARNING: DT compatible string "microchip,wilc1000-spi" appears
un-documented --check ./Documentation/devicetree/bindings/

I referred to  ./Documentation/devicetree/bindings/  and checked /staging,
resource-names.txt, vendor-prefixes.txt but I could not find anything
related to microchip or wilc1000.

On referring to ./Documentation/devicetree/bindings/spi  I found a text
file "microchip,spi-pic32.txt"  but I do not think its related to WILC1000
driver.

What should I do to remove this warning?

--00000000000015f690058349a49a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I came across the following warning in drivers/staging/wil=
c1000/wilc_spi.c<div><br></div><div>WARNING: DT compatible string &quot;mic=
rochip,wilc1000-spi&quot; appears un-documented --check ./Documentation/dev=
icetree/bindings/</div><div><br></div><div>I referred to=C2=A0 ./Documentat=
ion/devicetree/bindings/=C2=A0 and checked /staging, resource-names.txt, ve=
ndor-prefixes.txt but I could not find anything related to microchip or wil=
c1000.</div><div><br></div><div>On referring to ./Documentation/devicetree/=
bindings/spi=C2=A0 I found a text file &quot;microchip,spi-pic32.txt&quot;=
=C2=A0 but I do not think its related to WILC1000 driver.</div><div><br></d=
iv><div>What should=C2=A0I do to remove this warning?=C2=A0</div></div>

--00000000000015f690058349a49a--

