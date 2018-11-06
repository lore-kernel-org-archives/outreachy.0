X-GM-THRID: 6620547167797903360
X-Received: by 2002:a1c:7ecf:: with SMTP id z198-v6mr52578wmc.24.1541466320194;
        Mon, 05 Nov 2018 17:05:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:d14b:: with SMTP id i72-v6ls399215wmg.12.gmail; Mon, 05
 Nov 2018 17:05:19 -0800 (PST)
X-Google-Smtp-Source: AJdET5fNHwOtEQmVwMXVv9ECLHlnFXDXT8o9bAogaH2yhKN0XDUw7L0qf0i1i3EIm3a2BskUu5Ve
X-Received: by 2002:a7b:c013:: with SMTP id c19-v6mr44299wmb.23.1541466319435;
        Mon, 05 Nov 2018 17:05:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541466319; cv=pass;
        d=google.com; s=arc-20160816;
        b=hixWeBsKb1yffYyCY/QBwzsuuTWHMGWtABm641+kaTVgwjEpYjkx0/zxEQIHxXI7UO
         ufWT6rS7boaI36cYfwHFbo9bshi256DQq/L88gsLKfR8nKI1eLywnk75QkcWKYDhxVv/
         4sQBfPHJqKnlK3Kz4hZhvwsc0mfzXkupV/xhHLGv3i3xqHVHoMZbeIFPDep0ReMvhRAr
         ShHgsYuR6PwedpEP/V4ZtRW3Mi/Vg8ETHrv6xe6U15wxnT/r7M02rmN7GyyF3lqEjc8I
         bRJ5ov+0M/9BxlYLyxI+GG8lkPh5kSY8VB0IxZx/OOWdOpardeMF2xL3dfmN8pADJaqa
         CEyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JXsMvhJzDmX+VyFmTUChrCGK+8F2jIAFlBOvE2KhLwo=;
        b=YsE3iN5aiNVq/cwfRRfR6NmtLJVbmRJ5vnYcDslpdD7uw9VUYHfhBHovGkExNCsuBD
         LhfAnxdYeOUX2Ul3uxW3aIAIKeMr3uVy9oRbTbLLr+BI7Y8CI8swGVEw79wVROaKv7Tq
         hIQdjE8GWc5D/Xb3YZdebcpFHdTmsoANI2fSMK1NDqkrti728hXTkYn1RAYfPOeWL2TU
         rDPIwr8g9qo9Z5GLucoTfVxniNBLD+Dq4VMgUvcLH9EuS0Z9X5sKGxMZuaOGce7aNFTJ
         2wvHHFxXREEF8ip0/QWXVKBO7Fs2LGTbaDPkBOMa+pKof+9aLEX6pKb3zMbJ8VSsG4wu
         cZhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=eft8piLX;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id i190-v6si10535wme.4.2018.11.05.17.05.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 17:05:19 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=eft8piLX;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541466316; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=VNzKPI9VYbSSKfpMBCwIZJMml1KsmjmxO+N+JAjYrTmbKxNX+BHjP7yHVEMpjyMr71iFoAwNQw2rGbl7WzH91EkFrK2eL+rl6BPSLLTuMy7VXjgNXffHrh3Hh+wW1GGYJ/n1G/HGo4G3U0MOAevYagKsTb+JQc+H7tjOqdFZ41U=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541466316; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=JXsMvhJzDmX+VyFmTUChrCGK+8F2jIAFlBOvE2KhLwo=; 
	b=IjXvguMyBnWmAljpuvtk/P0ec7Hmn0B3nl49tQ0Nt/57XVs35DGgNLW0IMO2fiZqkwikaQn+iweOs0twBNRKYFWIpdoL62A1kIbXN+QMkwq/RL18golK+2n7jQ6y+d8uEsIScXLHF7hQSIaVOeeQOTuwzR9r6HHc+VguR/RnGP4=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541466316;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=623; bh=JXsMvhJzDmX+VyFmTUChrCGK+8F2jIAFlBOvE2KhLwo=;
	b=eft8piLXATUdsjwfHWNvv+Qj1PRuVNg8QAYr+InRRGOGjPNmmbDwX2vWDQVpzQ8W
	GjUSVVECYXZ9SFIoD+/HCnsGADXvuHII0LpXyL4+sk1tgysYOe2MFKxqI23s4V3ykOi
	/668o2O54JPVb1stfKHdTMcp3TlrkqzhrSzbJTu0=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541466314980682.8089068983046; Tue, 6 Nov 2018 02:05:14 +0100 (CET)
Date: Tue, 6 Nov 2018 01:05:13 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 08/15] staging: greybus: insert empty line after struct
Message-ID: <b6bb679f3cff13366999414150c7ac0d0cf8dc71.1541466185.git.code@wizofe.uk>
References: <cover.1541466184.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541466184.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Insert empty line after struct definition.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/bundle.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/greybus/bundle.h b/drivers/staging/greybus/bundle.h
index 8734d2055657..4aaf7a0880fd 100644
--- a/drivers/staging/greybus/bundle.h
+++ b/drivers/staging/greybus/bundle.h
@@ -31,6 +31,7 @@ struct gb_bundle {
 
 	struct list_head	links;	/* interface->bundles */
 };
+
 #define to_gb_bundle(d) container_of(d, struct gb_bundle, dev)
 
 /* Greybus "private" definitions" */
-- 
2.19.1



