X-GM-THRID: 6619591798140436480
X-Received: by 2002:a17:906:3041:: with SMTP id d1-v6mr1969610ejd.1.1541243819357;
        Sat, 03 Nov 2018 04:16:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:fd98:: with SMTP id o24-v6ls508096edt.8.gmail; Sat, 03
 Nov 2018 04:16:58 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cMx4LN8lNWqM6h/Ek2mut/z4uzS7oTW+pvSV3ncO90xVjicztA2a7xxgyD+iMIK8ghH3ak
X-Received: by 2002:aa7:d152:: with SMTP id r18-v6mr2703408edo.2.1541243818494;
        Sat, 03 Nov 2018 04:16:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541243818; cv=none;
        d=google.com; s=arc-20160816;
        b=J1/7V4z2ld2bam6aokFVqAmUBqdiKRDU/jyqw66Z1vdcxoGqzvq4YEaREnRbe08rtj
         d/RQHBlfeNSUMiGlL+du50Rhm2zF9y1XufUS3B4jWLMZucUpnhRr4qpE+GtyIfTajRlw
         7L9rGHqSKVqHBFn5/WKaAQQTAGUO+nIwpckuRlcEjvddDdDhoJLPOffk7/1g45TiS15T
         jX5c6ceWivlK7jOmW81RlJ7oVxwpd4Bt83gxqnzA2Ok7I/sd+XnWcmkTf3XiOUocvLuv
         grfC5jC1Z1SMbfhPA8Om+oFFZ5YD7V/P0+d1dQR9Lbdd/VHVnoN7E7ZjA+WIZ4iBemzx
         07KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=04D/n/nqYK84csyQDQEefYkAUtk32/C4MLKCt3n49CQ=;
        b=UwVXvcBjje7A+Rqcbc01KTBNBWdy3CdfXfD7U5DSeFGnXQ+FJ4DGEGZ46Nd7GojE6D
         +yh+llooRDvYbyP7lKnCG8ifVsCBsj0m1kJSlOS9SjGErDtLMxdmmk/BSQm8a7OiPR6D
         5/ct3bU6igOFeTFW1JmsEIvZ1xE1s57BF0qvgN+xtUYtg87p9+eq7s/vT1XqsLBwQUxR
         LEFwyn7vrkgBxp7npbodBfhfPIo7AUt60ETNx5ai7vusckmaPcxzCJmabgxL03eIJ95d
         aqwHE+by0v8usJabDJPdhOPLy6zryLrkuL3u93CUk9yGwOVlL5dQS85+wo5iJs4RYRz2
         TEJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BmVdZSgw;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id a35-v6si23828edd.1.2018.11.03.04.16.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 04:16:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BmVdZSgw;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id v24-v6so4038429wmh.3
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Nov 2018 04:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=04D/n/nqYK84csyQDQEefYkAUtk32/C4MLKCt3n49CQ=;
        b=BmVdZSgwcxg35ttLu5TLtuc0a46i+7TTHwTAN3HPEIMF7avAQ0cXL3zhD6oT47c9wZ
         Ns5sYsMfY5FOr4glCi3715C6l/MfCS6AYRR5xJlB7Ab4PqUeSXZ0RJhy5PaqIpTJxkV/
         q3mRMH/9AFobHhULJxG97vHDfJTrjkoG8yr77PSD51Jt13GBw3FVeaJN4rEedTc0hD0u
         lwO8WZ9+a6vxQGPWgJGFmuDQjO6I3h5KAirFZSCEDdlT4oSzqkMkVYzUHiQL+Tnl4rES
         28eub7sBl/y6mWtWl1Ay0uzVERLh5O6JRK3E2FLolRt3cmzPgoro1IVTCd6G9AxWeXv1
         5Knw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=04D/n/nqYK84csyQDQEefYkAUtk32/C4MLKCt3n49CQ=;
        b=iU1sU3MS5GIO/lb3+tNfy6yMLI4ls/WboLjUtH5kMxVpVDsjWmGkAzwa9pRJ1gZ5mF
         AVwTCN3RTETtGKiwKaR61gTYMBXZfHZpA5ijmyIKHw3h477oU5bocsXBwCCglgWAcGzp
         5BWiXS1YR9qwJqhPTUgJGSs3t6t/Dxej7rXysyIJe+epahX8nH9zlcRwwrpoqQ/vBQRT
         yie22Q67MzeAOk02KoHuMAs2uDpiXaUpcQs6eDTFZ+6NRSk2gqhq6HbvxKCyqmnx8lgO
         DAjetyK89UcVHPMCYZqTSV+PyQVJeYX1DpTtiOoMq9DKikP2WagsAeSBqaq3ocpPDmhV
         Sqag==
X-Gm-Message-State: AGRZ1gIVm0Ll3ljd/FLSHtL03IqCi74+xu/VvEPEWqERHtXISTMXezzf
	k1fvqHI0+J0xPJ+Zh4E75w==
X-Received: by 2002:a1c:cf02:: with SMTP id f2-v6mr686049wmg.34.1541243817708;
        Sat, 03 Nov 2018 04:16:57 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc114784-brad22-2-0-cust310.17-1.cable.virginm.net. [92.239.7.55])
        by smtp.googlemail.com with ESMTPSA id l140-v6sm52986557wmb.24.2018.11.03.04.16.56
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 03 Nov 2018 04:16:56 -0700 (PDT)
From: Irenge Jules Bashizi <jbi.octave@gmail.com>
To: linux-media@vger.kernel.org
Cc: gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr,
	outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com
Subject: [PATCH] staging:media:Add SPDX-License-Identifier
Date: Sat,  3 Nov 2018 11:16:48 +0000
Message-Id: <20181103111648.30662-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.17.2

Add SPDX-License-Identifier to fix missing license tag checkpatch warning

Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
---
 drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
index 7cc115c9ebe6..6d2570a63529 100644
--- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
+++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2012 Texas Instruments Inc
  *
@@ -10,9 +11,6 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
-- 
2.17.2


