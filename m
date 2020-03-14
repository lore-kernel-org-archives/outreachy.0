X-GM-THRID: 6804107396790616064
X-Received: by 2002:a92:aa87:: with SMTP id p7mr17999749ill.63.1584204704481;
        Sat, 14 Mar 2020 09:51:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:c534:: with SMTP id m20ls3585526ili.9.gmail; Sat, 14 Mar
 2020 09:51:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsX3b2tvv3wYkh5urykJdYBz0rh0HFqA7zRxTFr3G8OT5k3Ihs+iCAFRy55UNG7w8lBVDnF
X-Received: by 2002:a92:48cb:: with SMTP id j72mr19256614ilg.162.1584204703344;
        Sat, 14 Mar 2020 09:51:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584204703; cv=none;
        d=google.com; s=arc-20160816;
        b=PC2akVIFJH9pXXD8Ut+B4bQBoXK/w+CEKviIE5QKRmUAl/AHbYMozW8Bu/nvPPAjT3
         8jd60hipB09+rin5ghSULS17ydMkffzEEKlHfxizn8Iz83Fwafq8GeIluoPccsnS0ufY
         6yPmjc8IZf3fQENhX9B+vFZxZqFORSC35GiWVJg7JQ3gnlzX2r720y3SvIeCA2oq9vw7
         wtkYQWCox5fySIlHs/X6pw56xSvD1V0OSxr2Meq9eWsATIWgLTcZAlajMF4AUujULJNK
         9SooZdJwJZ8s22kuxDlyAWILQZK/+tyMDYnN+hqvYGigINzbPADGrL3SH32+1dBj1hho
         OXDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=nlC9vNnGjJsnjGYt+qTc4IuzZBOSliyMJRKbmZRK8G4=;
        b=RQWEejKHhrNT7JAo7j+zwdU95tsrBISTS7gp2dWyrM+ebu/Z4KlJi0qmuknykNWScM
         r2HN8kRuhSnoFJCIoASYipgRxWpgtJPSnoTK+obuK241TA/zDp3OiY0v2zXlTW5DHvU/
         sc283cKk/gPhnLphrM6av/RcNp43LSX1SqmKcsWvDrx98ggqDF9pjMLNYjQFxhtV+gV9
         /4xwsEJvaApcQ1VoIHBQoW1C0Uw2TbPgZUUzxIDbN88R+ctoOGP9K7xSi5UBQmrO8eLk
         DdTVZ4yjymfQv+hsWI+fSii561fJA2e083o56Hdu82117s7SFoBnBpE0/GqpN5Xbvo5/
         Ygxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EkiNAnwx;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id t10si743830ilf.3.2020.03.14.09.51.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 09:51:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EkiNAnwx;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id y30so6868860pga.13
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2020 09:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nlC9vNnGjJsnjGYt+qTc4IuzZBOSliyMJRKbmZRK8G4=;
        b=EkiNAnwx7igVMwufhgDZ+HSX3eTpu6InIX2oYp9g2/xkqfKuQ1e763WkmsEAXpfGZX
         TYX0tFwxckQXJXUuXzjPcgvl9BCH4Oh8JU2eI3k4frLQHo4aJXVgkgMErvULE0q5trHn
         zTv4ZdBojIuTPOoSMvbCTeoTKt0PSKDPwKz+LGdfoaV0ghlizqMNmjdcg6bVdEl6mWWr
         L44pnVWxj8ud6RXcB3BmpI2hOB6oxZK1slHI9qg8LNmY8Si4vhl8YLu2haJ0R2r/n5M3
         AJIeDDAEOBPd5aw8Wp72d59rUL2yAOtHP/wrmjqP4RwhAADnzn3rCoO7j6G2qGEUK+U8
         +eEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nlC9vNnGjJsnjGYt+qTc4IuzZBOSliyMJRKbmZRK8G4=;
        b=Y8tKKnG0qXoGzmsq1FjbzQY8Ehmn4vqFIo0xmH/djwnTVxJyuHrsTzmJNVFIP8J5Ya
         GurtVi89hz6A5ydZhCNO3IN30R/aWYdHXJNgPDsWVRy6BWL9X5db4VED0dF2J7TrwaUc
         ZQCKsoQ7MW/EiZoGzijbLa68u7eoXJLAvebLuEhlSzjIAf7JKjy62Y1m8frm3yG72S/G
         DS5+p8rHqdz/pmjyEmQzJKqoYPAATuY0RASOfIeaKS9nWOfuge1d2xsMhbIVN9zilLKD
         uS6PyINltL/vYgH8n5Oorptu/cyLB4KBW0sC6v39QAlu+qMm/uF2PsVWUQOXL/VgtRLm
         QgqA==
X-Gm-Message-State: ANhLgQ0TSo3rQe0Fz4zdZlCqnYLS+v3BAlYcfevxMjhIDxtRk0f4eN1a
	vlGn5RlPsZn27Kip0h/ygAtoES6H
X-Received: by 2002:a63:5465:: with SMTP id e37mr18411343pgm.411.1584204702596;
        Sat, 14 Mar 2020 09:51:42 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.139])
        by smtp.gmail.com with ESMTPSA id c190sm15804108pga.35.2020.03.14.09.51.40
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 14 Mar 2020 09:51:42 -0700 (PDT)
Date: Sat, 14 Mar 2020 22:21:37 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, abbotti@mev.co.uk,
	hsweeten@visionengravers.com
Subject: [PATCH] staging: comedi: ni_atmio16d: remove commented code blocks
Message-ID: <20200314165130.GA18939@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove two if# 0 directive code blocks. The first commented code block
is redundant too; whereas the other code block is never used. Problem
detected by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/comedi/drivers/ni_atmio16d.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_atmio16d.c b/drivers/staging/comedi/drivers/ni_atmio16d.c
index 68ad9676f962..0bca7d752015 100644
--- a/drivers/staging/comedi/drivers/ni_atmio16d.c
+++ b/drivers/staging/comedi/drivers/ni_atmio16d.c
@@ -266,19 +266,9 @@ static int atmio16d_ai_cmdtest(struct comedi_device *dev,
 	if (cmd->scan_begin_src == TRIG_FOLLOW) {
 		/* internal trigger */
 		err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);
-	} else {
-#if 0
-		/* external trigger */
-		/* should be level/edge, hi/lo specification here */
-		err |= comedi_check_trigger_arg_is(&cmd->scan_begin_arg, 0);
-#endif
 	}
 
 	err |= comedi_check_trigger_arg_min(&cmd->convert_arg, 10000);
-#if 0
-	err |= comedi_check_trigger_arg_max(&cmd->convert_arg, SLOWEST_TIMER);
-#endif
-
 	err |= comedi_check_trigger_arg_is(&cmd->scan_end_arg,
 					   cmd->chanlist_len);
 
-- 
2.17.1


