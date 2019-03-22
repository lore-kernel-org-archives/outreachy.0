X-GM-THRID: 6670961947938127872
X-Received: by 2002:a6b:e50a:: with SMTP id y10mr8494862ioc.91.1553285286591;
        Fri, 22 Mar 2019 13:08:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:4c81:: with SMTP id q1ls3620567jad.0.gmail; Fri, 22 Mar
 2019 13:08:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzPN0IrUhKoQdbO7Vcjy1ktFjZ4xgLGs5RnEZz9LFj1DhrwwRfpgILK0HYsVuRFbOrvkjVs
X-Received: by 2002:a02:8243:: with SMTP id q3mr3092169jag.37.1553285285677;
        Fri, 22 Mar 2019 13:08:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553285285; cv=none;
        d=google.com; s=arc-20160816;
        b=NldegsoOAuSc5U5iUwzVOzDMspDUH5YQUd39w4ZBjMicNzPvBbGTsOyu37IgWDyyXF
         +Hwkk5VjjKPRPSemYqNy/zimjC0D5aCRR5Zyr2c4ai4M+FHZdzlh6Nu2bG1BrWA0z++w
         /dPDe4wdNXnml9QOE/4V1tR6tBuTQ6BtNs94IKe+Oe2xKt7wC/+Qb5hBlB16GrvqszaI
         2wcVqaycRFBNktSHDMfJ8532ft+fz/SczDrymVhzFfe97G67SPOOFLnMMo1HldI+WggI
         za1k5qz4n2CmyJpB8pOyHmT8dBR1EF02UTptgUHAV+ELzt2fPcMRF2n1m4+cr0+8Jpmw
         pITQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=XHSJ48KdP6QtJpnYWRVKlYHJyLUKhQAmZOOB6OD49a4=;
        b=Xz1CLJh4WhEVxRaaVmTl67QIiiep7pg7SHvfkByiDBZbJG5yfeCsR7o13+cAm2oyZ6
         HeeenK3KMCSdSeyhWl8R903oy3hCekPLVcB/PX/3gh3YH/r4trBvPuGF5qCYGq7xby39
         HKgNJQ75Pxk9WxFJDoGy6843ZWIQpUZjvfyOJh6+qjQ+qbqmFAZVjH1LSmWgezhNcf1h
         vXwzKJxC/mvWQCAZiOKkXTHIJyaflSyz1lDVFNLtEUZBi9zFMW2VhLDRNBoaOvf8xc03
         kYfEx32nn4fEO3UPUANOK/zeqV4nC0v14+ttF/AvpU3I/do1YX1QSYrEUlLY2y7yJaEo
         x2Rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KcGwmStc;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id j6si942806itb.0.2019.03.22.13.08.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 13:08:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KcGwmStc;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x529.google.com with SMTP id y3so2213993pgk.12
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Mar 2019 13:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=XHSJ48KdP6QtJpnYWRVKlYHJyLUKhQAmZOOB6OD49a4=;
        b=KcGwmStcoBXBd32/EfH0AvdC1h5pS9sUTehghzHgwdcwj5ZWHf0+M8picLLjtyBnnJ
         apYP3SsdyUyhAqmplERvmZm+OppDUNCnP/YTiC5ZkuX1dFtUchb2YRBQr5Htqlp+TM77
         +FgUQ2qW1etWtX3eGUhUedymywGpWbArbI2hVxzBm3dxjx0OXqm1QuIbQXz2yfJHvuLL
         BC0j+E8/vS25k76X8idCC0yu9b1nlF4Rv5o+U0g4mGs2lbnFiIcClsq6jnoLWdqeAQun
         LkdQ+ck/TN8oAV0gdxjo2ttLB8rNQ1mCOMDJT2rqjUac7jgIejrqp5BX8RVX0pgi0b/l
         BUyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=XHSJ48KdP6QtJpnYWRVKlYHJyLUKhQAmZOOB6OD49a4=;
        b=fsQ8ejfZjZEBc39PwqH8I37e4VQIPKwnhJRcbDmHAgjOYbTVCjh3x7OtA9NsxSwAE9
         v6gW24QYltSqSAYb8o7qG1bT/f5fEiUaLtJm0iEQxmsomalRj2QYtzSu1omTj3QlFfWi
         DEPJ+eHy5QiFxxts+raqAuwDpD+VYT0k/vwS9IIVJDjBzKeN4JVqLGnQIVZsd+nd1HBE
         IlTWyYv51XnJVgOaeujVXkcxxuIa4tmQQSzggR5ORsEl3qv+80tw7Fur+M6UtJS4J1ig
         VxQxca7s1ZkMm3P6+zaGc3G/RTBCwteix8DCwybCAqoR+adrP4G9nS7RZui1/GR5GEuU
         cFdg==
X-Gm-Message-State: APjAAAUfNPysrENYCOfFPSORGNSsfEpzXC954vQyOqzkivEN1lZgOc6p
	Vpe0uD/zFuPHU2EIT5ZV67TCuwAyhIg=
X-Received: by 2002:aa7:8459:: with SMTP id r25mr11322302pfn.65.1553285285163;
        Fri, 22 Mar 2019 13:08:05 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.101])
        by smtp.gmail.com with ESMTPSA id 5sm5406618pfh.5.2019.03.22.13.08.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 13:08:04 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH v3 1/3] staging: vt6655: line over 80 characters
Date: Sat, 23 Mar 2019 01:37:47 +0530
Message-Id: <20190322200747.23965-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Align function to prevent it from going over 80 character a line to get
rid of checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
changes in v3:
 -to cut line at the commas

changes in v2:
 -corrected identation issue
 -aligned the lines from patch 3/3 that are over 80 character

 drivers/staging/vt6655/rf.c | 29 +++++++++++++++++++++--------
 1 file changed, 21 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index fd09b9771cf5..0b3a2097ba10 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -702,9 +702,13 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 		for (ii = 0; ii < CB_AL2230_INIT_SEQ; ii++)
 			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230InitTable[ii]);
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel-1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				 dwAL2230ChannelTable0[uChannel-1]);
 		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable1[uChannel-1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				 dwAL2230ChannelTable1[uChannel-1]);
 		break;
 
 		/* Need to check, PLLON need to be low for channel setting */
@@ -723,11 +727,17 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230InitTableAMode[ii]);
 		}
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable0[uChannel-1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				 dwAL7230ChannelTable0[uChannel-1]);
 		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable1[uChannel-1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				 dwAL7230ChannelTable1[uChannel-1]);
 		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable2[uChannel-1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				 dwAL7230ChannelTable2[uChannel-1]);
 		break;
 
 	case RF_NOTHING:
@@ -737,7 +747,8 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 		return false;
 	}
 
-	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX, (unsigned long)MAKEWORD(bySleepCount, byInitCount));
+	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX,
+			(unsigned long)MAKEWORD(bySleepCount, byInitCount));
 
 	return true;
 }
@@ -933,7 +944,8 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
 	 * register
 	 * Channel Index 1~14
 	 */
-	if ((byOldChannel <= CB_MAX_CHANNEL_24G) && (byNewChannel > CB_MAX_CHANNEL_24G)) {
+	if ((byOldChannel <= CB_MAX_CHANNEL_24G) &&
+	    (byNewChannel > CB_MAX_CHANNEL_24G)) {
 		/* Change from 2.4G to 5G [Reg] */
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[2]);
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[3]);
@@ -942,7 +954,8 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[10]);
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[12]);
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[15]);
-	} else if ((byOldChannel > CB_MAX_CHANNEL_24G) && (byNewChannel <= CB_MAX_CHANNEL_24G)) {
+	} else if ((byOldChannel > CB_MAX_CHANNEL_24G) &&
+		   (byNewChannel <= CB_MAX_CHANNEL_24G)) {
 		/* Change from 5G to 2.4G [Reg] */
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[2]);
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[3]);
-- 
2.17.1


