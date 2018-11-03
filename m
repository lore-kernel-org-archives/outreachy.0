X-GM-THRID: 6619380955766325248
X-Received: by 2002:a17:902:1024:: with SMTP id b33-v6mr226245pla.121.1541210900720;
        Fri, 02 Nov 2018 19:08:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:aa09:: with SMTP id be9-v6ls9628226plb.2.gmail; Fri,
 02 Nov 2018 19:08:20 -0700 (PDT)
X-Google-Smtp-Source: AJdET5d8bWseS4UDEoSC9g19CfM9YQAzy5iHCzwakHVpNrEpgwa1RbCr1nuk6HLTBgdtwYRUFw/V
X-Received: by 2002:a17:902:f217:: with SMTP id gn23mr2573646plb.20.1541210900039;
        Fri, 02 Nov 2018 19:08:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541210900; cv=none;
        d=google.com; s=arc-20160816;
        b=aKjts0suFUaPiv/Ngke2dYMHEiBcv/Lco/GLfqcacRrn0TUi5rv9uZCi6VpctPCRW8
         DS3mZWQvuGiTQYjokDV7InSWnlhxU3Vrlp5ynSAwA2xceTIxVGqHAsgTb1WSj/C66kms
         Dzm2gA0ZMhVMPW1H/LehjS3rwP+IEmGG5/5YFusizSO51t+aWnc8xTaWbiVhWGGhg90B
         e3EJb02U7tGq0TfhoyCh8YF1rDX8WqtLmm4NKOGKkptQ5afQX7cCVzUCEYJPk7+CwmVb
         gbg2AdxWActGXcBUfxHMsPr+mobvrC6y4T+x7M69c6u79htzE/EQC9k0y6pwQ4rHZqFh
         K3/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=DahTgG8rr/pJGLhl4yDJBBqsNq0oRu8FfjHwgEGcBaU=;
        b=hAEuWMty5E/MmrHC9EzGvxSEWmWTKtSYSM2PxvNJH95FISZj1MIGNlAsdvk1taMExm
         lFhw23sWOVmYPJrJ+aeBDxjHyhXHFSsI9DmNyWbCKewe1gU7JBONUTfPxIfieWJkySzB
         Lva7d28jdw3SVqbgX8UeYwATMwiKfNBOBqs06hukEanEv6lhRXd5/Rou63liDdqSh1GC
         kA4zPGTlHQQSPbv1aZKOlT14K1dOoBH97f4Oyn4RcXSDbf3JZd9CmsDWvNT74mVwsMUt
         ph5Zssg6tE1DvfXqiac2D3DtoU4B4A5mkewAlsggqVQWq24qrji/D8lAQ+zRxr2GT+/1
         +IQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=P0sDFpMP;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <sashal@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 7-v6si1687049pga.5.2018.11.02.19.08.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 19:08:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=P0sDFpMP;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6B912204FD;
	Sat,  3 Nov 2018 02:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541210899;
	bh=MlXjPlvbaGi8PEMf5QvfV/cICeUtlIr9aomaQ4FVLZQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P0sDFpMPf8ZbCTONIdEtxCu7whO/n95zABbbiyjVi+TDyxcBcdh4+bU4fkRRumSM5
	 PLumWJwJbnnfTECFAPCJbmjWrzyxVZSpTN0TdrsxapQyJKZvMQYX+/++lJ8vxuUkkO
	 NESranHT0arap7/Vyyn1sa5n/C6jjT6D1vfVVAp4=
Date: Fri, 2 Nov 2018 22:08:18 -0400
From: Sasha Levin <sashal@kernel.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3 1/5] staging: greybus Align
 parameters to parentheses
Message-ID: <20181103020818.GM194472@sasha-vm>
References: <cover.1541194567.git.code@wizofe.uk>
 <537e6bd9f572df1cce6fc8624471a9c7c2714c35.1541194567.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <537e6bd9f572df1cce6fc8624471a9c7c2714c35.1541194567.git.code@wizofe.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Nov 02, 2018 at 09:38:55PM +0000, Ioannis Valasakis wrote:
>@@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundle *bundle,
> static const struct greybus_bundle_id *
> greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
> {
>-	if (id == NULL)
>+	if (!id == NULL)
> 		return NULL;
>
> 	for (; id->vendor || id->product || id->class || id->driver_info;

This still looks broken.

--
Thanks,
Sasha

