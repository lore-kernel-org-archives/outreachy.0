X-GM-THRID: 6478777723718205440
X-Received: by 10.157.40.46 with SMTP id m43mr1685137otb.83.1508459091638;
        Thu, 19 Oct 2017 17:24:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.72.171 with SMTP id d40ls2496319otf.11.gmail; Thu, 19 Oct
 2017 17:24:50 -0700 (PDT)
X-Received: by 10.202.253.68 with SMTP id b65mr1588968oii.71.1508459090783;
        Thu, 19 Oct 2017 17:24:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508459090; cv=none;
        d=google.com; s=arc-20160816;
        b=U4EDr4xeV6Z4llGUxKxNr9nYHUduAgHaJRAwNx4ceh+aWSwfKfHca/fk/IS+qjln7q
         suh1yf/ewPnYW442dlbyUv/uoayYlxjnuib4fIB1LYbQ8H0F7iB31CsWV0ijn4J5e4lo
         mKxsdcyCM/0jddE+nOhbTtYtTNikeuT1m4Ev+Aa4dNfFGyOT3cgcTEUBf94IcyunBcWo
         oXebECi7rVOhPXHiUUcfAzuqHYoz2sM04wcBWN6TVAG6bBVqk5BL63GsNEEmCdljmSFj
         CFZ4/lXdFdm9v47vVyfN/JUccGO8A4yRgEzjZ9yGg/LmXxe0Ba5Jl/0vphaOcQBAqORA
         9Euw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=PeQB6MPXH4bpb4nW75jHv5xjosRNPSQJMmogGwNdGrE=;
        b=GMy2r1imnbJyrmzuFeerrGwH3St4QomJJ/1wozaUKvC8B3ycHaS9iNQk2qiokECuY3
         Y7Q4ekIsf6HPNz/wbDCwu34PaPiaYoYpOAed8uEU8p9XRQl5udMZf+7ksxjm74ezgTsm
         3DAFKP0WIdyDYmI7vrBDP+8ZASdfVmMbKwWAKFZ9nMuDrtVrLgqcHsKSivN1g4AQoxW8
         oYrTprbwmGdhtdX8STOc0JmkqhqXkUSQ3+SJpna2b1IpHJhVy/MvuWb3vq9f7zVot4tU
         LwmmlR3kEPDLeW+FAyZK9SDvkHQVDitIW741jLbm8NAmdxDQ7QCNDXgKUncKXOqkyY24
         PSOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=QvWW1H+/;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua0-x242.google.com (mail-ua0-x242.google.com. [2607:f8b0:400c:c08::242])
        by gmr-mx.google.com with ESMTPS id b194si875704oii.0.2017.10.19.17.24.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Oct 2017 17:24:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::242 as permitted sender) client-ip=2607:f8b0:400c:c08::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=QvWW1H+/;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua0-x242.google.com with SMTP id 47so7247174uas.8
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Oct 2017 17:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PeQB6MPXH4bpb4nW75jHv5xjosRNPSQJMmogGwNdGrE=;
        b=QvWW1H+/gUL7b5fxtcLzaurx23OKGuJcs7nK96Ybc0npS0QTwphYiw4EGr5jZyfJ6d
         onJUmbb+ZbyWhFFnTn+GcaukGhjJ766QKzO+mkLpDJtrs8eeLYHG9jpLaE4fZrCUXZdF
         M6d+JoA6inx/i9ipIoj6otPRNbE6koMxeezWyskP/+OznySR7OFgzXKlzquNAizZ8gMU
         L7Q6NI1TCwlDfyYXkG6LGIUEmCjuiziOuVPPuA4stZk/UOlAvkZgkCc2M6RtAu/GmJ63
         Ui+JUE8EIMTwO9vCPmC2yhusGGDegG1PRDHqH1WItpvFEDNSPCTEBKe0CoEDzG4/edph
         c+TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PeQB6MPXH4bpb4nW75jHv5xjosRNPSQJMmogGwNdGrE=;
        b=A7fOvF36pMH/MMexSIIaYXbMx1rdlmPQhceGVv3VoIKhOA9Sf1TJs+7RijP0iOoN7a
         AliiYhFJ58A0p/RWM+rc/lAiQTBy2bR40vc4quiRvB0xP1/BmlJVZfQ2gKGtK2IJighu
         eel3FECXMdaTXx6PD4FyFZzwAzI8chCFQ12l3l2FTHRf1uwGfRG+dNtPho8qeZz3+26a
         4K9u45zPo0CJHzojz3HwjGru8K8fXd1zcQhL0u1h+PMKh1RsQynBEz9hTOm6zNigXghZ
         mFaHzHSNwjKeCNFBn248pK1n+ygrZKzEy8mo4NFvHW62DUc2n1uf1cCpFkcrxzhgT6eU
         1P/g==
X-Gm-Message-State: AMCzsaXSiZN4w42nIbFsOSZ19B3VVPu612wT/giHTDdQYQ931V/LMSht
	LGS8ZCVbVxhW+wnhxKFQJ7nmrawP
X-Google-Smtp-Source: ABhQp+QoMnBX8bdD/timnuwaoQc8NYuK3POuzHt1MqJrbhreGexcUljw7NoZGgZGhZUwgQqN0kYnxg==
X-Received: by 10.159.39.97 with SMTP id a88mr2758995uaa.31.1508459089956;
        Thu, 19 Oct 2017 17:24:49 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.209.222])
        by smtp.gmail.com with ESMTPSA id q2sm3402722vka.51.2017.10.19.17.24.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Oct 2017 17:24:49 -0700 (PDT)
Date: Thu, 19 Oct 2017 20:24:46 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: pablo@netfilter.org, Julia.Lawall@lip6.fr
Cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: greybus: Move logical operator in previous line
Message-ID: <489c8f35c6c06f11a9617fce3ecddb55c232aedb.1508457306.git.frank@generalsoftwareinc.com>
References: <cover.1508457306.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508457306.git.frank@generalsoftwareinc.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Reorganize the if condition line so logical continuation fall in the
previous line to meet the preferred coding style for the linux kernel.

Detected by checkpatch with message:
CHECK: Logical continuations should be on the previous line

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/greybus/audio_codec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
index 003a84a..e940388 100644
--- a/drivers/staging/greybus/audio_codec.c
+++ b/drivers/staging/greybus/audio_codec.c
@@ -842,8 +842,8 @@ int gbaudio_register_module(struct gbaudio_module_info *module)
 		 * from codec->jack_list
 		 */
 		list_for_each_entry(jack, &codec->jack_list, list) {
-			if ((jack == &module->headset_jack)
-			    || (jack == &module->button_jack))
+			if (jack == &module->headset_jack ||
+			    jack == &module->button_jack)
 				snd_device_register(codec->card->snd_card,
 						    jack->jack);
 		}
-- 
2.7.4


