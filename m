X-GM-THRID: 6617138679585439744
X-Received: by 2002:a63:d305:: with SMTP id b5-v6mr521599pgg.47.1540683697086;
        Sat, 27 Oct 2018 16:41:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ab96:: with SMTP id f22-v6ls1937581plr.1.gmail; Sat,
 27 Oct 2018 16:41:36 -0700 (PDT)
X-Google-Smtp-Source: AJdET5f4TdCEhDLaV8LnWYh2xZv3pijXnZfPLzvukWRXtZHPK6bUMOKnIFokjz2Of/+tLug6b2EI
X-Received: by 2002:a17:902:280a:: with SMTP id e10-v6mr689286plb.45.1540683696305;
        Sat, 27 Oct 2018 16:41:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540683696; cv=none;
        d=google.com; s=arc-20160816;
        b=pUsojrTEajPZo7VruPKYtmetaHseXuqUJivpJdkjDc2uc4ZJadlWJHw7vYlH6ldaiK
         KrvME8SZ7VuilF2iHPsLS+NlErdNArFVGL7o+9cdfimhrHH2DaakoRE6Bsa6OCCFKbzq
         jr0l1RZUWy/5OuxgVHM9/U1Sx/SMRKZGvo8S6/omtQstEFBgg9CpplZAYly2pTu0AAiG
         9gA/8d9xqGaJWCG1V0yuo1lN8/evfQt1gJlyA87orRU7tl9GCW0kqv+VGTDOuNNf74zM
         +mMmjpt8ohN13ZpCjpwFPh3u0OKPGKIOhuPby+qFBNWi8WKG3JBWP5zWsKXJKnHjQPn1
         FYyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=V6A4DN6ydM5M0ZnlUtOf5QeQ+X0DZH9w1jiEqbK4/o4=;
        b=cJ0OwutEjAxiVEtAP+U2Yo/8VefUgnmdRxzwhwS4BxpiTmqu/KtZQNIZfp7bpi6lQl
         xMhMMNLb6xALwyWc19VK3Xw/guZnWSN2LMkF8ubx7gzqKkY3iyA09qDiZqWNPbDqX8zO
         WHngEX1UcGa+qglAjL9Ahzn8q17skX2vLWe526NFZaYr0dl2CmSMdHc3KjYkSpMxtcUy
         SI3C1Ot0wy3xPQm4g475Gen8TkdIRw0CcYJuF/9KAVrBX64xjKDdmOzAwVS4ZoQrUFIy
         2WItn67345CGoi3e/3cFFH81cZ2gh/+21CTD2x6p097SSWcQVYvjO1FOf4WPZIj8TFmY
         ViEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ETH1og6b;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <sashal@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id az8-v6si49039plb.2.2018.10.27.16.41.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Oct 2018 16:41:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ETH1og6b;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A8B7720848;
	Sat, 27 Oct 2018 23:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1540683696;
	bh=V6A4DN6ydM5M0ZnlUtOf5QeQ+X0DZH9w1jiEqbK4/o4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ETH1og6b1E20QmuCRmD4QgaXh4mfx8qDfFZjhcBIq6SJbSA60CZ7bqbfpDBVzeWUi
	 66Is5c7wce4+Fj5yUtdMNKOzl88Rnoa7eXzVS3aZvRJ83O8bezvwhkEeP8WfbMyMU/
	 dsGgVnlCZcmg0B2R9OGaCRtTE57XtcmWj2hAwpbo=
Date: Sat, 27 Oct 2018 19:41:34 -0400
From: Sasha Levin <sashal@kernel.org>
To: Dafna Hirschfeld <dafna3@gmail.com>
Cc: helen.koike@collabora.com, hverkuil@xs4all.nl, mchehab@kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH vicodec 1/1] media: vicodec: Add empty
 callbacks to prepare for the request API
Message-ID: <20181027234134.GK2015@sasha-vm>
References: <fb11134ccd7459f5b88f277f52f40b6a1f901bc7.1540672323.git.dafna3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <fb11134ccd7459f5b88f277f52f40b6a1f901bc7.1540672323.git.dafna3@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Oct 27, 2018 at 11:37:19PM +0300, Dafna Hirschfeld wrote:
>Add the callbacks `_req_validate` `_req_queue` of the struct
>`media_device_ops` as empty functions.
>Those will be implemented later.

Hi Dafna,

In general, unless it's a very complicated functionality, we usually
don't add code that doesn't have any users.

It's fine to do it as part of a patchset where the usage comes in later
patches, but in cases such as these where there are no users,
maintainers will usually not take the patch.

--
Thanks,
Sasha

