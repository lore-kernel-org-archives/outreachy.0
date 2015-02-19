X-GM-THRID: 1059734945792
X-Received: by 10.182.246.198 with SMTP id xy6mr6340365obc.26.1424385751513;
        Thu, 19 Feb 2015 14:42:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.37.200 with SMTP id l191ls590114iol.23.gmail; Thu, 19 Feb
 2015 14:42:31 -0800 (PST)
X-Received: by 10.66.168.233 with SMTP id zz9mr6292432pab.6.1424385751336;
        Thu, 19 Feb 2015 14:42:31 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id ki8si3072400pdb.1.2015.02.19.14.42.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 14:42:31 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x236.google.com with SMTP id z10so3105173pdj.0
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 14:42:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=BwU2lnCzMQ7B7va+WVoFJWPK8Uetp1V/yrZmWJj40D0=;
        b=h5CeYnr5Tu3++elWFdgbAncnILWWiupITBHPgjTeRUcYdArwajT0+dMQ9OlajDDrAi
         ggaIzllRhwiw4N1QQam5nhrcnE2g8TgpIClroj636AczohNAsh7rvwUd7kseWnPGIJh0
         vmBbquS4FsGJwfx2oNdMXWXlZJ5IViOiUkEThCKLzFQVOUvQx3RzBKUaO/M6QHiaEIlX
         CSBnRKniuOUzHpWIjERxfYLcTAkcjpfVhjQ79D23Rgyo91vCuf2w8VoY21fj+Puu5Tr5
         jQEMy8jbTRbE1Ur0CKAhtURoR3LX7jxn7dlrRVY2Na4FH78A2+quScBrNSnpjkNB79uy
         zvyA==
X-Received: by 10.70.123.70 with SMTP id ly6mr11651278pdb.154.1424385751257;
        Thu, 19 Feb 2015 14:42:31 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id f10sm15561780pds.37.2015.02.19.14.42.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 14:42:30 -0800 (PST)
Date: Fri, 20 Feb 2015 04:12:14 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: media: Remove spaces before tabs
Message-ID: <20150219224214.GA1311@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch is to remove unneeded spaces before tabs so as to
follow kernel coding conventions.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/media/tlg2300/pd-common.h | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/tlg2300/pd-common.h b/drivers/staging/media/tlg2300/pd-common.h
index 9e23ad32..4252162 100644
--- a/drivers/staging/media/tlg2300/pd-common.h
+++ b/drivers/staging/media/tlg2300/pd-common.h
@@ -45,7 +45,7 @@ struct vbi_data {
 
 	unsigned int		copied;
 	unsigned int		vbi_size; /* the whole size of two fields */
-	int 			users;
+	int			users;
 };
 
 /*
@@ -80,9 +80,9 @@ struct video_data {
 
 	/* for communication */
 	u8			endpoint_addr;
-	struct urb 		*urb_array[SBUF_NUM];
+	struct urb		*urb_array[SBUF_NUM];
 	struct vbi_data		*vbi;
-	struct poseidon 	*pd;
+	struct poseidon		*pd;
 	struct front_face	*front;
 
 	int			is_streaming;
@@ -102,16 +102,16 @@ enum pcm_stream_state {
 #define CAPTURE_STREAM_EN 1
 struct poseidon_audio {
 	struct urb		*urb_array[AUDIO_BUFS];
-	unsigned int 		copied_position;
+	unsigned int		copied_position;
 	struct snd_pcm_substream   *capture_pcm_substream;
 
-	unsigned int 		rcv_position;
+	unsigned int		rcv_position;
 	struct	snd_card	*card;
-	int 			card_close;
+	int			card_close;
 
-	int 			users;
+	int			users;
 	int			pm_state;
-	enum pcm_stream_state 	capture_stream;
+	enum pcm_stream_state	capture_stream;
 };
 
 struct radio_data {
@@ -177,7 +177,7 @@ struct poseidon {
 	/* hardware info */
 	struct usb_device	*udev;
 	struct usb_interface	*interface;
-	int 			cur_transfer_mode;
+	int			cur_transfer_mode;
 
 	struct video_data	video_data;	/* video */
 	struct vbi_data		vbi_data;	/* vbi	 */
@@ -199,7 +199,7 @@ struct poseidon {
 };
 
 struct poseidon_format {
-	char 	*name;
+	char	*name;
 	int	fourcc;		 /* video4linux 2	  */
 	int	depth;		 /* bit/pixel		  */
 	int	flags;
-- 
1.9.1


