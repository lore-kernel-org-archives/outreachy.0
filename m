X-GM-THRID: 6804182216767176704
X-Received: by 2002:a67:870f:: with SMTP id j15mr12854274vsd.95.1584222125369;
        Sat, 14 Mar 2020 14:42:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:96cb:: with SMTP id y194ls750074vkd.6.gmail; Sat, 14 Mar
 2020 14:42:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vui2uSZxTwbNKO/ZUq57rHbQJoagYFgKI/ZfF9bvgMS69nwto8on5hkBQNtyiSsZQfL+V5B
X-Received: by 2002:a1f:900c:: with SMTP id s12mr13038015vkd.96.1584222123638;
        Sat, 14 Mar 2020 14:42:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584222123; cv=none;
        d=google.com; s=arc-20160816;
        b=mSrcfNXJlV7eXlea/3VCjd+iQMduhiv3/n1hS3Q3ICNv+iMoYIwkTPjekH+oWYUJWi
         3+ckNf9n13RvPCHu9VSjH01vUXElb2anvoVDXBjxmtdGP2QNLMgwb2QQOHP0tEkj9hCW
         pyIDbVbH1JrKUujfoEkXc2soriYN5WbOM8OlA2U0GgaiI1IM3P+fMacR7p/MgWMgn/SM
         QEouF1Oc9ClwLJv1mLhmTtHoakVEtmrsPFXoend4i6LM2Ms/AE+5TPc+LsyA3+MnrVRV
         Ga6mp/CgtFg99+4TMLdm+Hu3sAQEjorU9tAjdg8opds1G7f0NaSIEwsKjpTtA18XovG9
         tdGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=m5tqpUi3mhEcMMvvbKv0ydxLvXpjPfY7ns70qkRI1Y8=;
        b=wwTV2b5E6g8AYXle4HdBG/jbvofnEiBtwnTtDTuliT6EotlqmdRvXW7Z4lprU5tgJi
         bmZloXOZxX4DmuTZKBgy+X0zkCaSeMT67FigmrbMF/eNnF8ZFmrxyQfesoi7KdAkEvnx
         jPqjEhpJWibBvfHJUJOt5nfllEU92CkUj3rvFlLaLbbc0nPqYGtr6/ZUard/xtjZd4nm
         eNaZF4lvOktJ+JZw8X7YW9wkQSLlvbmCWf4e+watSSgEh4HBx09AnmX0ezfeL/9ee2p2
         8NqYPNtKAiDDht99tBWhLKvSJ7MBjrssFGHYxZym341OospChdrl+AVXqd5NhEZplLXf
         Z1ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="NSsK6Q/f";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 205si605049vkw.2.2020.03.14.14.42.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 14:42:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="NSsK6Q/f";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id i13so7458474pfe.3
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2020 14:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=m5tqpUi3mhEcMMvvbKv0ydxLvXpjPfY7ns70qkRI1Y8=;
        b=NSsK6Q/fBnEnB20ZD2bjArrgtUlndG/BNMf3rJ0fUJxdmZGIitq2D/9Oqpu5Uu82/C
         Wc5x+ZuBFNqf2f8vNQ6EhuGZw2wubGURNc3WpWgoXwp4BRnIxN/Gosvozj4OS+S9+V+4
         edFbqhI5NIDTCKGUUHsIzd51565IcVlhIkZoVCLJkQcGl9J5rJKi3UQOGPYmyVXhkGPX
         OF7V7iv4RDzVhZVtTA7+Nm5q0VdBaf+xXwQnfheE5k7xmv5E6fDAsbWww8G1+Nn60d+O
         6vdor7SosXxeXtrgzKQxoOAh+I6wCKL2dvwHrVRDR9ncGH1aMo6osFsfwnChRokPCtqm
         bl1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=m5tqpUi3mhEcMMvvbKv0ydxLvXpjPfY7ns70qkRI1Y8=;
        b=bQnKQjG71tEBjNP2TQtU1G5Mj8uJhxxTsl2ZWOMoqOC6m64Gto1ife3Et8K41FZnug
         Xpu9gV5nY22EEaz8ST+fX+oFwcueQMUa8qy5KTw086UJGAjZ1davHycfu23LyBeOyOcl
         WajD0dr85AhOcyAGqqJ5Zj/rMWcCPHLgKy2S0sa3Ge0a+oxK5pE5ogQVIvwLrMBT35iD
         RwEmXQy0UyvdDd3yQszWuOmMkbFs/EoNygIqkcO5BGLVMa16Hpkn+/VDWrIdwR7Afi7/
         HG7qapj6s1w2reQYRCOs0NeSg/vn4BPqRbshRNLF5c7+lf8XkI+ArQQW4xQHjIHXjhwm
         EpRA==
X-Gm-Message-State: ANhLgQ3O7k0YlIo/pUnq2jxDRmwCpJTHMsQREy6vBURzjobKztpn+A0W
	ZOa7xXLUm6XPfvVqkKZfVyfnf0b2
X-Received: by 2002:a63:8e44:: with SMTP id k65mr19116413pge.452.1584222122619;
        Sat, 14 Mar 2020 14:42:02 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.139])
        by smtp.gmail.com with ESMTPSA id j17sm16986152pfr.176.2020.03.14.14.42.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 14 Mar 2020 14:42:02 -0700 (PDT)
Date: Sun, 15 Mar 2020 03:11:57 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, abbotti@mev.co.uk,
	hsweeten@visionengravers.com
Subject: [PATCH] staging: comedi: rtd520: Resolve multiline dereference
Message-ID: <20200314214154.GA3904@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Reformat multi-line dereferencing of function arguments
&cmd->scan_begin_arg. Problem detected by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/comedi/drivers/rtd520.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/rtd520.c b/drivers/staging/comedi/drivers/rtd520.c
index bb400e08f0bc..8c04af09be2c 100644
--- a/drivers/staging/comedi/drivers/rtd520.c
+++ b/drivers/staging/comedi/drivers/rtd520.c
@@ -815,9 +815,8 @@ static int rtd_ai_cmdtest(struct comedi_device *dev,
 
 		if (cmd->scan_begin_src == TRIG_TIMER) {
 			arg = cmd->convert_arg * cmd->scan_end_arg;
-			err |= comedi_check_trigger_arg_min(&cmd->
-							    scan_begin_arg,
-							    arg);
+			err |= comedi_check_trigger_arg_min(
+					&cmd->scan_begin_arg, arg);
 		}
 	}
 
-- 
2.17.1


