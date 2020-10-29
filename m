X-GM-THRID: 6888933426501517312
X-Received: by 2002:a62:3:0:b029:160:d92:2680 with SMTP id 3-20020a6200030000b02901600d922680mr3147951pfa.44.1603954803021;
        Thu, 29 Oct 2020 00:00:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ee4b:: with SMTP id 11ls842730plo.8.gmail; Thu, 29
 Oct 2020 00:00:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwmlJIUnG4iWLJlMukkQf6qGX53f3xsgokLBBoVp0WUB2OLaDR3jYQx7+sawb3yAcaLwfTm
X-Received: by 2002:a17:90a:fd12:: with SMTP id cv18mr2800655pjb.221.1603954801328;
        Thu, 29 Oct 2020 00:00:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603954801; cv=none;
        d=google.com; s=arc-20160816;
        b=IhYWI0KA/TfoR322mCy2rKXNPnZBi4+mTsidHclwye+WUUHhna5MboQZKQ4CWhJwrW
         64fUnaumkZB4eTZZTI6/ma1twSqt7U1PAo2exbw2Xk0EDBK03p3zRKni2MOWnOg3Qt+w
         CjqSJfcluRQt/5uCkz0Z7A4V1G01RZDpT2J1jPPizFKXbJGtbKtk5l4BoYtav3Ts1Ei0
         OlVCHo9ifkddnCKHlyGboe5qyGOtYT2srwjozJaBtb8cSsx1+Kq0oM0cbC9WMEDn935Q
         Dpdx7gRhwv+EtissvyHIpFFSd1q+ykLFQDsmXCeUbcbNpnaQ30PDIjbrjahTFPIlcOOW
         rmzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=+NDyw01plS4fG0+i6jNnu5LeFzHP6XRIQCBJW5HrCgg=;
        b=EIDt9/3TZENlfXWj/GPvm2USrO9gDJBpxlQHF+uo4ksZXR34UKeJYC/z6m/wJ/zdGU
         zrpB8AhlPkLTnzg3foBKLRX9o45MmH2LyLl0gzEs8mSCbNN5KUjzo36slhAbKURHw1xG
         A2/6wDglFAEPDv/Czchk5H/gn3ya65txkWz4Hyu29oXnSmUdt3bkxceGXtiQrm32A/xt
         i94sjglgaRwYXxe3hr8590iXjA8JuHd1MVVX39medbXRi0fr5RRg1cQf5VXiNsIU5bbk
         HBH6boUFXoUmpLH07/9lRGCRrUratD5Kvv5wezVoxmF3r7DnifT8qmXBl8OHxZn3GRTL
         igXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D6vrOHiB;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mdejesusfilho@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l11si156958pgt.3.2020.10.29.00.00.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 00:00:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D6vrOHiB;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id 10so1569123pfp.5
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2020 00:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=+NDyw01plS4fG0+i6jNnu5LeFzHP6XRIQCBJW5HrCgg=;
        b=D6vrOHiBqCAhwQH0X+ot5/CRAjcqacAuxgdnWwTi6cquonoTdlSA3Iz53tlwGzAJzr
         Iwxm/hZP2G+jUCEpLUTFm89EnzWUY5/5nJATfRkhMptC3HsNm8fuhoHkRsPfQx7AIUUt
         +nhcaWTsZAXMXYSx3SMSGiw43A3UeunaBjU6uztViMUpoiW6Dv8xXezOGYeFBCmt683a
         Quis35XUG8gdkDhvjQvSLLgl/2LAl1+OttESQwSO9wg2qNNgZ/Z8XtBWX2ADa63a6oeI
         wTMwRZvlJAP+IKxPl+o8mCDsb2GXOwsREuXr9g/gDAo7cXhsw7fAaD7eIYcOcJ/v66Nd
         ooKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=+NDyw01plS4fG0+i6jNnu5LeFzHP6XRIQCBJW5HrCgg=;
        b=teh8bk/l0gJ+zP1txoxeFW/EasPhsth4qLp6vrE7oHP0CWgq5BH0r4j0TLwoS8ltbx
         8AP4Ytt/I2HEluUpkigk7jmbPxzq3iFpbBAWhn3vBllNRytN4EuRdk2M4IWF1QP5I4Tt
         cTOwJcVyXDOu6cgFM77XOvyPeCCNYco5WtAj2W9umeI7qdD+guwqsKpk+tb/chkXsTN7
         P++M+LjG+IzZw8JcBuKxRhvX998kpv3srRBGKdcutrquwfJThe7f5/RO/9CIHgf9Glzm
         SDiqENf5Cq3VosccosIytqGJEENQIDyI43UcMLNx/uNTmY+XawFIM7plQWojj4sTkmQ/
         vodA==
X-Gm-Message-State: AOAM531x/MKkb8TmYkDrRQtTF0deyDNl9aJ8ymsuBkMfzYbTTsmIFYkx
	rpHrRLUuHFCJbPC/yORHNs9OH+f4wfuo3g==
X-Received: by 2002:aa7:970f:0:b029:161:ee2d:bb9b with SMTP id a15-20020aa7970f0000b0290161ee2dbb9bmr3024558pfg.63.1603954800958;
        Thu, 29 Oct 2020 00:00:00 -0700 (PDT)
Return-Path: <mdejesusfilho@gmail.com>
Received: from localhost ([2601:643:282:4810:aed1:b8ff:fe8c:bd73])
        by smtp.gmail.com with ESMTPSA id h5sm1668665pfn.12.2020.10.28.23.59.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 00:00:00 -0700 (PDT)
Date: Wed, 28 Oct 2020 23:59:58 -0700
From: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6655: Remove useless else
Message-ID: <20201029065958.GA5259@Zangetsu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The else statement is not useful due to the presence of a return
statement on the if block. Remove the else statement and adjust the
indentation of the code. Reported by checkpatch.

Signed-off-by: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 36 +++++++++++++++++------------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 477d19314634..978efe81077a 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -519,28 +519,28 @@ s_uFillDataHead(
 										wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
 			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
 			return buf->duration;
-		} else {
-			struct vnt_tx_datahead_ab *buf = pTxDataHead;
-			/* Get SignalField, ServiceField & Length */
-			vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
-					  byPktType, &buf->ab);
+		}
 
-			if (is_pspoll) {
-				__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
+		struct vnt_tx_datahead_ab *buf = pTxDataHead;
+		/* Get SignalField, ServiceField & Length */
+		vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
+				  byPktType, &buf->ab);
 
-				buf->duration = dur;
-			} else {
-				/* Get Duration and TimeStampOff */
-				buf->duration =
-					cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
-									    wCurrentRate, bNeedAck, uFragIdx,
-									    cbLastFragmentSize, uMACfragNum,
-									    byFBOption));
-			}
+		if (is_pspoll) {
+			__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
 
-			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
-			return buf->duration;
+			buf->duration = dur;
+		} else {
+			/* Get Duration and TimeStampOff */
+			buf->duration =
+				cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
+								    wCurrentRate, bNeedAck, uFragIdx,
+								    cbLastFragmentSize, uMACfragNum,
+								    byFBOption));
 		}
+
+		buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
+		return buf->duration;
 	} else {
 		struct vnt_tx_datahead_ab *buf = pTxDataHead;
 		/* Get SignalField, ServiceField & Length */
-- 
2.28.0


