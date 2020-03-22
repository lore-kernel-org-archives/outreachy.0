X-GM-THRID: 6804118062630961152
X-Received: by 2002:a05:6102:21dc:: with SMTP id r28mr1349497vsg.33.1584903583540;
        Sun, 22 Mar 2020 11:59:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6102:320a:: with SMTP id r10ls1491021vsf.9.gmail; Sun,
 22 Mar 2020 11:59:42 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs1vxWyUl8xo9RBpbFRr4pB1pYrzLig1/9Lm3pOiW55BR2eend5CABPSslIzE/qMx3N6Y/5
X-Received: by 2002:a67:fa47:: with SMTP id j7mr1644804vsq.128.1584903582157;
        Sun, 22 Mar 2020 11:59:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584903582; cv=none;
        d=google.com; s=arc-20160816;
        b=y1sMYSQAUfRpAgqmzmHZ5CBngmw1AApS+C8MYYKudfAPCywPEBuqo7ZD/2KbBfEOM0
         +oecQX5CFMzmTIJ/PxdLIBgW3U4Kbxoq6h1DYFODPPqgbXiDGnJPrqPHd4ILtAz3sSQx
         fmycHdyuBEuilvm7OdMwS+tPJW4+4c7rRI4W1OR6WOAFYvaduhuCQyXv2gt7FpjN91WP
         BvL5Wrp6hvhzQNvOvZGEmk6QbWKnrU+XQ0j/d7pqsZAiCi/F/ewsJtHqJdnmlZoh1ahk
         5zIEfTjgdz2LWbDXeKvo6NINQ2gO0KFTEEIi8iZwfldVFQdDWz5xKX1AF2F8LAUuOI7O
         CR9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=zkp7G7m1AFrUDtmuCUOCWTbiOX9qy23y3+ONRo7ZuX4=;
        b=ICis5H7eUxHKjtVCa3sKc6f4a49/e6cfWfHqVnZjQjiE56oHldfxPKSke/F00q38nL
         4j7JCAyK77/xw7+aUypZpstOSyKVePzEJoNFTBlU1v5nRAnjX3eIQj9OKRCjhsOLXAfP
         FpmKyb1hgYzAO9RmgfdsKi87yxFK3bWFGQAAhE8553ZyPqRYzLRL/p13afoYCHe5ZmTu
         yjul8zdT9Q1fjftsqDtSJ1471k21CPZs9BtNeqV2/eTzgCHwj5xySZIuVU8r3jXfFfWV
         hnxqB2mrI0GiNEwUbxSR+/CnaFFjpPOYWvp8Jf3bkPtPl/PTFMWqOOSxYVi/hCGQkeym
         XSvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rIuemuol;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id 205si705227vkw.2.2020.03.22.11.59.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 11:59:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rIuemuol;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id m15so4995103pje.3
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 11:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zkp7G7m1AFrUDtmuCUOCWTbiOX9qy23y3+ONRo7ZuX4=;
        b=rIuemuolRZ8M6rSpMCDk0MKSz/FnQJKNbdw6uMvl4P13JPtIqxpCuFEWtntgmzQeIp
         xtfeQOC2SUhcCl5dP0SI7uWFPk5T5SOep8fvYU2u11b7aYH1b2dpwdG/mRUvcyrTdVRZ
         rPJEIMCCTwqvvq6tlZQnUAMJDZqvmfEtxa/SeZNtWSAO/fszHxqno5fy14P5EQsXf6am
         VgaZFDtgSSuSgGKIBFpMfuQ8btCDhBm+Dp1DX0h8mENEFYbUdzQcVJP6lSKqA+bXoIZ+
         Dem6EgsU8VjCo0UtfuZFy9uMbOHlXdWyCei0OWmzybdBTOCg5bXvkRCDRythHbw+F4zE
         UFog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zkp7G7m1AFrUDtmuCUOCWTbiOX9qy23y3+ONRo7ZuX4=;
        b=JyAmnOzNlCP4VmRwV5X2laiHHZ5O/6HIHy+YAw6icVAWT3B+dbCwlcaY8LptN272U2
         w051lLeJiUW1jsVE53Q1i1yUBv5VxBSB0WX/zgScR+RShoq4DXn7tAlXcy6WsUQIKs9j
         IXcQ7qP8T6BCj10sl9VoMALUCwGpaCQUTmlXzauRzCdC5u86IMafwtggE+khnNUB+dEY
         D8DcFyyoagP8p5NO/X/CLh+LZ0WOsA5YUWv3avYPuv+bVj/MKqwbmhiJocR3sM2k9+9K
         rU7FJsNWyjIupkL8YMHOU12uIPmZRzkc7whiBBXQZSCS5azP9qV9uh6wAKHQMtkapvUR
         xvwQ==
X-Gm-Message-State: ANhLgQ3ANsmM5ZK8ToP5DK3or8pjWYCieCkosEx+aaygbLAFmOoeolYl
	mma3M1MvJ6I8EEs6eAc98L96ZO9i
X-Received: by 2002:a17:902:904c:: with SMTP id w12mr17519467plz.338.1584903581112;
        Sun, 22 Mar 2020 11:59:41 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.191])
        by smtp.gmail.com with ESMTPSA id t3sm4699422pfl.26.2020.03.22.11.59.38
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 11:59:40 -0700 (PDT)
Date: Mon, 23 Mar 2020 00:29:36 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: comedi: ni_labpc_common: Reformat multiple line
 dereference
Message-ID: <20200322185932.GA12594@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Reformat multi-line dereferencing of function arguments
&cmd->scan_begin_arg. Also reformat another call to the same function to
follow the same argument formatting structure. Problem detected by
checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---

Resending patch for review. No changes since last version.

 drivers/staging/comedi/drivers/ni_labpc_common.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_labpc_common.c b/drivers/staging/comedi/drivers/ni_labpc_common.c
index 406952f5521d..ce0f85026277 100644
--- a/drivers/staging/comedi/drivers/ni_labpc_common.c
+++ b/drivers/staging/comedi/drivers/ni_labpc_common.c
@@ -560,14 +560,13 @@ static int labpc_ai_cmdtest(struct comedi_device *dev,
 	/* make sure scan timing is not too fast */
 	if (cmd->scan_begin_src == TRIG_TIMER) {
 		if (cmd->convert_src == TRIG_TIMER) {
-			err |= comedi_check_trigger_arg_min(&cmd->
-							    scan_begin_arg,
-							    cmd->convert_arg *
-							    cmd->chanlist_len);
+			err |= comedi_check_trigger_arg_min(
+					&cmd->scan_begin_arg,
+					cmd->convert_arg * cmd->chanlist_len);
 		}
-		err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
-						    board->ai_speed *
-						    cmd->chanlist_len);
+		err |= comedi_check_trigger_arg_min(
+					&cmd->scan_begin_arg,
+					board->ai_speed * cmd->chanlist_len);
 	}
 
 	switch (cmd->stop_src) {
-- 
2.17.1


