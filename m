X-GM-THRID: 6804181452117245952
X-Received: by 2002:a9d:719a:: with SMTP id o26mr15269859otj.290.1584221947423;
        Sat, 14 Mar 2020 14:39:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:508d:: with SMTP id e135ls4120957oib.5.gmail; Sat, 14
 Mar 2020 14:39:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvlExLy1OafSYFB7MeS7MtKn4iZuwIyMs3wqTHloL8HT+m4IYPaCfX6s09PhGtzA2p5BywK
X-Received: by 2002:a54:4181:: with SMTP id 1mr12228446oiy.158.1584221945784;
        Sat, 14 Mar 2020 14:39:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584221945; cv=none;
        d=google.com; s=arc-20160816;
        b=ctmKG1AH+KjZlQLiTw5dOT2hWoxGC3bYQgGGW+QA8r+vBDhe4PO99yEshqClTby3Ys
         chNTaq5yXDfY9P6C6v0ckpktTw0SbOvJAYGouj3b3NWM9r9hVkQhuUoWsq6+/wObsEMv
         yyTNZTzlD1EN+fOzPFnb9fqJ9xXKyttuCHaXQCQmHUHC4Q3H882wwtnkF2UVYyKFsDw/
         DCj3R3x4703IiofJjv6YEhISPicLbYxanPoJJpkYCcmVfXUGFz+yASgAKwsZb3A1oK6U
         JMnu8o9CbClZnznFjs7nys6HlMTXz6IFbQaumZn42Bzayoce3eEqSjPEgO/6kvp9bIaM
         NbkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=hS9UsDD4dcuwILUMuAq+uD+V2dxTJnAznm3wNonIEhc=;
        b=UPjKSPs6hPbYWSca4QaqeDclUqvuTaAqioA4ALRe8T/ibt6yfXCfcncMqwXq45xe7B
         mhJa/ugJy337JHND2rst5NEHyhA0ltUbNQIOeOzHslvmpj7C9lzUohFLY22hKYsludH0
         8kEfCO17l+jySJTRtsNLhwkjXz1KdIgMQl+J9ygwoNRZvCMZzaszvlmgF/6OQ6GiR0xT
         K1r6CPIwplhJNG9M2CJYvi9CMo/4oAaQOGJ0g8jFgXRn2cDJfK7VkmvVyhTbl4w+h/kH
         lutK+caX/Rijapg+IoGlX0/oTSlj2ufuAVyoK+a8rUEuJxcJ7AZhXakM7iJyFPR23JZ5
         mEcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T+xaZssT;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id d188si772759oig.0.2020.03.14.14.39.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 14:39:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T+xaZssT;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id i13so7455672pfe.3
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2020 14:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hS9UsDD4dcuwILUMuAq+uD+V2dxTJnAznm3wNonIEhc=;
        b=T+xaZssT5DxkzkL96vh1GnliXD0Lqf93e09vz0sg443tzPkxyAZh6O3avCiPy7mt7/
         4vKf5RmQYqw9wXz4QB/X+vNxgp+xNZDXn5UQ9ceyerALfoZQZmIjSmfD7zHb/qJE/sMW
         s3zcZOiXDTZTVpJlPcchprl/UM8ImGhS4aW3k5/s3+DnsmUa937tJCpt+mJ341oWoFnx
         UvpSWHPVlf7OvCd+jWmnhAOGhO9LwAcaSc8es3Yrth+4Z9rE44IzgQHyM5/+PqGHwjWL
         l6ab045TsmjjqGvEYHFH8UrfJHURybAzcwJgVVtLrMzPkd1lAMh0KEDon867PrY0h+UJ
         usqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hS9UsDD4dcuwILUMuAq+uD+V2dxTJnAznm3wNonIEhc=;
        b=ofy8ll5x++sK6dirZWRQhD8kXN6Q+MPiIlEMOjeRq43TcdAbH++rp/pe79bZ0F0Ze6
         CNdBPv/vZE13g215H9XN85XiZxYrd/FQ4on+RZ0p+7YmtyIiJ0yrUdsk4x/TAMuXg1lH
         /e9YjMh4e2d0BkdEZ+y9ZlQbTURgb/HE17H7XRNn5CtPxi+yTmX/dlEcHiwcsH/SifHO
         PDc1G/BmL/i2Qwcx7L0Smi63QzZaI3hs0ve6YU6yPyNuKn17IwX/IEwnroJwOaHi4Zqp
         zKnxxSdP5xTixy4v5L6huE1G9nm0iBm0e8DxSEOKRvUnVF5MGinkLm15Vf0JnbP7Unv4
         R9qw==
X-Gm-Message-State: ANhLgQ28tdSfn++V1FlA9FsyRseMcUBLlvUbrKfbzyPAWCrTTYgCRJvU
	LSGVIOFZg1O1m6ystQuobAW2VflZ
X-Received: by 2002:a63:a361:: with SMTP id v33mr19375766pgn.324.1584221944978;
        Sat, 14 Mar 2020 14:39:04 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.139])
        by smtp.gmail.com with ESMTPSA id gn11sm6657649pjb.42.2020.03.14.14.39.02
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 14 Mar 2020 14:39:04 -0700 (PDT)
Date: Sun, 15 Mar 2020 03:09:00 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, abbotti@mev.co.uk
Subject: [PATCH] staging: comedi: s626: Reformat function arguments
Message-ID: <20200314213856.GA3874@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Reformat function call arguments to comedi_check_trigger_arg_min
as per coding style guideline. Problem detected by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/comedi/drivers/s626.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/s626.c b/drivers/staging/comedi/drivers/s626.c
index 39049d3c56d7..084a8e7b9fc2 100644
--- a/drivers/staging/comedi/drivers/s626.c
+++ b/drivers/staging/comedi/drivers/s626.c
@@ -1892,8 +1892,7 @@ static int s626_ai_cmdtest(struct comedi_device *dev,
 		if (cmd->scan_begin_src == TRIG_TIMER) {
 			arg = cmd->convert_arg * cmd->scan_end_arg;
 			err |= comedi_check_trigger_arg_min(
-				&cmd->scan_begin_arg,
-				arg);
+					&cmd->scan_begin_arg, arg);
 		}
 	}
 
-- 
2.17.1


