X-GM-THRID: 6802195878840893440
X-Received: by 2002:a17:90a:77c3:: with SMTP id e3mr87441pjs.143.1583771257101;
        Mon, 09 Mar 2020 09:27:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:e118:: with SMTP id z24ls3736562pgh.9.gmail; Mon, 09 Mar
 2020 09:27:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvE8TyT5gbLr/WXSMzIfa97Q2SVCeTrhUkgu3wo7Z7v2ucU1RjqFhzO37Cssop46AQBObeC
X-Received: by 2002:a63:fe0a:: with SMTP id p10mr16514177pgh.96.1583771255497;
        Mon, 09 Mar 2020 09:27:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583771255; cv=none;
        d=google.com; s=arc-20160816;
        b=NM61ndnTZdTLEXxD+vcW3/YJjJqtV9LJJk/jBcO1negYxYqARJ3/8fL17Z4XhPdqZo
         +3SK0rGXwPZzWF3Bn1zB3m5cHvPYCdTF/CzUF65rYwivR/IZTz4slJWfqRqIbE7CtE/4
         iFdFLpyQvqjf00zXmuib3eWEo9hHfxkUxneS0XFiArQpn2E9E6/qZcVqDd5khb4mgcZA
         +AZPIHUEI7zXfTwhUs+na6dlmrW2tsEmGZ5yhFohAsNFz1mPYUVt0OHu9kJtNUY+aijy
         NObo3g8Wj7z57zlDE5jpSvnh5j3VlswvsBqRrcxcOghQpEFAO7qpzKQSDgXSiv+5kZAu
         NVHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=q/CDf2wV4XQPRtyUe78U0xoVosp5KcEuEJaqfO/4kjc=;
        b=nr5HtwArMS/B+KP2PQW1/u0a3Yg5zKwAemsz2Lg3QCNe4IlsKpoIz/hdtgc4SZuHBF
         4zbpEhslY47X8fYdmr4zkjECkFNJl+Ep4w5Jc8vvgMRW5TI9RAGnDa9bADCHkq32LwHa
         SBpY2G/zV7/PPYXfYx8EMO/oqPGRNHc0/ky31Rd21DS8HpA5WW7OxEkzdeVd+3KncN7V
         0VWtE8C/NefutdE2KAXeMsvpT8disc7T/RNGBCuvjVnLRC+j5y0EHP0ynVyLf7w3rkgo
         gJVLsOaazRE15eX83cDEhBGB3yE0dtUAfgbLR0Lj7DKukvaWJuKMSNnriBmbJ+Hyk99a
         igYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lvM8BYyW;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id mv5si13826pjb.0.2020.03.09.09.27.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 09:27:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lvM8BYyW;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id mq3so71763pjb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 09:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=q/CDf2wV4XQPRtyUe78U0xoVosp5KcEuEJaqfO/4kjc=;
        b=lvM8BYyWBoIp4Yn7B4fhYUb5gnq4aY9HUY2O4mUw4pESNfTzqP/eyKaM078W96MXDL
         H+1XB/tZthDMaz+JDKPNWW1KB/DwX1x29gSq+An3cI1tVxm40xbYA1pX8Qpvo80nUMW0
         nwU9db0ZyPh8BXyXZjamcqrmRy3rhkecl0HHVJBP9dFuP6yKh/XuaXWIdQGZiF7qqqTb
         f1uQpg5zyk/RSAh11X8tmT1t7VyNPDokFDj/daKobKa6sm1I3IxBfkTMAF3j77U/Jz5M
         LBiDBGcHMAIvVvF9enE09z8H9OkPFDTjuyqdFFpI+AzsZ0VFurmpMXIok6pmO8ndNK7u
         3JPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=q/CDf2wV4XQPRtyUe78U0xoVosp5KcEuEJaqfO/4kjc=;
        b=E4UxzJPtbVsctuu2grdO63x/opRuGHl3hzfcE1ToPTZCdDY+U2LLAXJHuorz9NE/um
         XI1TgHK1joCToXVKuLVuCB7f6nzOLr3+GKF7tA/kBjCNp/9OhleiW126ciQX3YBbW2dY
         VS4jaLS2WZ9TYrpxgh2M8drlpPnnOvqUtuayCvKDm8RQMYfB0Ges7Pu8mR3D+UYIwME2
         lvsAehmSGhEYrSNJp3+gfSVNdtLkevKsFnMR5h3w4vyqp0+QF9520wbz546N/hw8EDs3
         ciZjsp16a5XGpufFkD+IYNnjlTc5S7tSgl0Gzv/ZeiYMTfxGfLVhkYoxQh1KMEXxB6gr
         Fctw==
X-Gm-Message-State: ANhLgQ0HYwlzc3J3Oosy7MtBWSKHdMlHAuNyPtqRRFXENTecuSXQ1V/s
	IK7xgtbfmGFJFfYm1kD6kpo=
X-Received: by 2002:a17:90a:8905:: with SMTP id u5mr89022pjn.137.1583771254999;
        Mon, 09 Mar 2020 09:27:34 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.178.183])
        by smtp.gmail.com with ESMTPSA id z16sm35008pjt.40.2020.03.09.09.27.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 09:27:34 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH v2 0/3] [Outreachy kernel] staging: qlge: qlge.h: cleanup suggested by checkpatch
Date: Mon,  9 Mar 2020 21:57:25 +0530
Message-Id: <20200309162728.4342-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Cleanup suggested by checkpatch for the file drivers/staging/qlge/qlge.h.

Payal Kshirsagar (3):
  [Outreachy kernel] staging: qlge: qlge.h: remove spaces before tabs
    and align code
  [Outreachy kernel] staging: qlge: qlge.h: add spaces around operators
  [Outreachy kernel] staging: qlge: qlge.h: remove excess newlines

 drivers/staging/qlge/qlge.h | 69 ++++++++++++++++++-------------------
 1 file changed, 33 insertions(+), 36 deletions(-)

-- 
2.17.1


