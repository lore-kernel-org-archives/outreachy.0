X-GM-THRID: 6468535104462389248
X-Received: by 10.107.57.10 with SMTP id g10mr6187258ioa.102.1506073191080;
        Fri, 22 Sep 2017 02:39:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.169.144 with SMTP id s138ls2684279vke.2.gmail; Fri, 22 Sep
 2017 02:39:50 -0700 (PDT)
X-Received: by 10.31.178.18 with SMTP id b18mr6071549vkf.17.1506073190133;
        Fri, 22 Sep 2017 02:39:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506073190; cv=none;
        d=google.com; s=arc-20160816;
        b=ADa/VqZMFExCRNQGLvydixhpE0OsdtBDaFCjE6ztG6oVcQJw6s/Uu3JTuogKuRyLyy
         acroQ3l9wvNcWLCXZbhgQApwxphjSLbQoySE7KWlupGY3Jmaj6lvsMtz5cJzohFdSRzA
         gB0CqxFBY1S3ZCCVcdfBUk1omo2h9ve1DdfEOZve6oVR4/Baj6bhSJuKpDO4eWn4+Szl
         r+KDih/wVmU2exghMoX5tXRz8n1Z5J5HyQJEvBBy+dgfrDRtV+LkEaGoh2uL4e2AAtiE
         POJ/R0wXg/Y18voXaaIv7hUJTp1XFdy873Q1TAecYIB3TSkkv02Kv8BB44SFgKohJ+er
         TxcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=omtYU/xkK0AzEaDxucyKpLhMYZ531cQ9wJP8zD9fwvg=;
        b=eGinSqsGNJXIDADtiwGZpxrkOjWek9Y7Bch6S081kZy4T2VedvDMvdjgYkOaZZCnj9
         MV1dMNRRa9dxHuv1/ireeYGzTI0xA57YQvsO75mPcDYYpAIGmY1nemeffYYXu9x3CSy7
         UNM0U3+/9AdMyP5I+Cz6tPQh3Qc6GiHtoGk++dCI2bPyILJCkfyFlolZG2uQcGUQc/HF
         q7WHfvFzbTUOp3vVMRgcElHdj0V/YWj++YUWXCS3OL3wLBWsLUYWPjSymjI/pX/oQACH
         QlQSJql3Mlz75EJGrWZXdYLYU2I5pShA/DrfAZ++V6QgHMb0fo/kz28/OdLyxMLv5/Fl
         dy2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=THlIoBmm;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id z74si207345pfj.21.2017.09.22.02.39.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 02:39:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=THlIoBmm;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id h4so262809pfk.0
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 02:39:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=omtYU/xkK0AzEaDxucyKpLhMYZ531cQ9wJP8zD9fwvg=;
        b=THlIoBmmWnN1es8BBmM/n7XLrfKa8fWvQEjJmhoJqf3Z/k/2hY4LfhEbnXRzOWqMjk
         cEK4jrAwavFP8HjoAu5/9vpzLyUrta71Ms7ubQzWxTMxh18BHR6/i680OyQywGF5Kopk
         1khbM1U6IL3JePw88dfIP8uIdBk9rFV5/6pO9OWjdBre23JzUebM+BpbZ5cKnU23yNql
         FKTZvhNLjXNHD11iMFkzA6vCoKHZ8WwxYl+VYcbxGAMjFTokAcXqgWbFNk7027RXeJhq
         RbwjPFiEVtmaFoPxv9Q7aYf1yqNXfujKrENiTsC1oH4ntMXwMG0YAN951qD2jzEtKN8Z
         51gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=omtYU/xkK0AzEaDxucyKpLhMYZ531cQ9wJP8zD9fwvg=;
        b=QGtLeMv9tIrJkmQ2Fs/CD+vedL5FoWFFejjtMvIDUz0QMCw6p0R8yt5nxbRMMahkrO
         hnM/y82EvuV1doUd82oRE5xFC6m7OvwXNa5yXwufbhm3LrOFiROkn+MWWP2DnJdtqv+O
         aGiV631pNReKxGLOh2p9EFNKZxPyMUdnzeYS/mmkJeC5Yn+ZHETS18b9rjcPo3NBj9nD
         C8lcPWYO7BzmhI64O4qYgOk4QZ806ui7Nkfb6t6A/C8/ld3AOTmPj/I23aBOT0BE9sSy
         bG1e1B0WN5HWUe0wlxmi5rK6nFBtwo7dqZguE60W09mvguYYkmFG6OMJlta4zN5YL6pm
         GeBg==
X-Gm-Message-State: AHPjjUgfD1bYJIXZqmrFHef1PKJepBY4XZRGR/DdltFfpF6wFl5AGKG7
	CUclkdmSknIyzRGaCX0Inp0zsA==
X-Google-Smtp-Source: AOwi7QCRQtBTGDigTutsNSAyU69pan8HyEmK9HKRw4g0C+S8SKpE6d92dl/dW9Wa//Zgz+B706vNfQ==
X-Received: by 10.101.88.76 with SMTP id s12mr8816666pgr.159.1506073189775;
        Fri, 22 Sep 2017 02:39:49 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.15])
        by smtp.gmail.com with ESMTPSA id r81sm6518449pfj.106.2017.09.22.02.39.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 02:39:49 -0700 (PDT)
Date: Fri, 22 Sep 2017 15:09:39 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: remove implicit bool->int conversions
Message-ID: <20170922093939.GA29152@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Implicit type conversions are bad; they hinder readability of code and have
potential to cause bugs. Here the variable wait_ack is always supplied a bool
value while in function declarations it is defined as an int type. Fix it by
defining wait_ack a bool type in all usages.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 2db2ca6..99f3d5c 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -1196,7 +1196,7 @@ static void issue_assocreq(struct adapter *padapter)
 }
 
 /* when wait_ack is true, this function should be called at process context */
-static int _issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int power_mode, int wait_ack)
+static int _issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int power_mode, bool wait_ack)
 {
 	int ret = _FAIL;
 	struct xmit_frame			*pmgntframe;
@@ -1316,7 +1316,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
 }
 
 /* when wait_ack is true, this function should be called at process context */
-static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int wait_ack)
+static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, bool wait_ack)
 {
 	int ret = _FAIL;
 	struct xmit_frame			*pmgntframe;
@@ -1442,7 +1442,7 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
 	return ret;
 }
 
-static int _issue_deauth(struct adapter *padapter, unsigned char *da, unsigned short reason, u8 wait_ack)
+static int _issue_deauth(struct adapter *padapter, unsigned char *da, unsigned short reason, bool wait_ack)
 {
 	struct xmit_frame			*pmgntframe;
 	struct pkt_attrib			*pattrib;
-- 
2.7.4


