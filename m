X-GM-THRID: 6615609378154217472
X-Received: by 2002:a9f:2e10:: with SMTP id t16mr779784uaj.24.1540943311682;
        Tue, 30 Oct 2018 16:48:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:3242:: with SMTP id r2ls1165663uan.1.gmail; Tue, 30 Oct
 2018 16:48:30 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dSCT8NI46SRWDo7t9GC01pvtzwXCnuVQyuLZQCa1MUSGTX/9Ust4izBG3cLG6AL8qisId3
X-Received: by 2002:ab0:2151:: with SMTP id t17mr800105ual.8.1540943310894;
        Tue, 30 Oct 2018 16:48:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540943310; cv=none;
        d=google.com; s=arc-20160816;
        b=n2RSkB5mpJmEWQuuYKfiENowHWFNlckxuPSTuIx50uMOnN5tcCjsd4N56wz4jxWtud
         oFnl7CIBrd05Bs+FkB1PwmRUJCC8E5JlVYK2khv6TYEgRVtAJPTOc4sDXyE07anvbqdh
         PPZYXD8PHSMHl6+i637D6AVG7SQA10AFPThwjskucjq6sVMLXRzLYyaGZW68SqaVicVG
         SZrwg9Y2TbWMMLvyTCQfhazbLKX9X+nOBZV0YF5zUTXovzOw0unXXTJp6ENZNSLgrKJM
         EZiK5clcvxQngJrMiNMZMeIxOuWaQ/FinLPl/Law+T9LHw5CLTRiFfudd9pNB+Hcgzy6
         7T/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uzlRdCP6eEWgmNRew0+XT2kujO4ROMcVJLTenLnnJyE=;
        b=N+7YsBQqVatk8/zhsUcfkc+bzGv8R1Tn4XkzsA/KlFLzmkajYIBppBDkRTKK4Qgc72
         frPmET5QeEFiu9rGlZsf1wkJg6e0sP9W8tGUmrAO0M7WTwfXrcFLK3qruMsN3OFEfLrv
         3LKy09CqXfYvLrT0FivjSpaZ4Cwb9G4iDrNdReeazOCjC5AFKetVuhzfRHGOwcYEAAMt
         nlvq45uNOntXQLGQ20uF/n3xSSNf9aQeQ+PNiEg317hcWJ1U9yG7o6X4mrWWLeOKsolv
         bumAK+ZxwtyZ8e8YShVHICEUdoALSIPcTTqEawVhNrlSugyj01PukLJzRETfS913VGtC
         lOug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YPsFXy1l;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <sashal@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w9si1663307uac.0.2018.10.30.16.48.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Oct 2018 16:48:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YPsFXy1l;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4F57E20664;
	Tue, 30 Oct 2018 23:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1540943309;
	bh=tQvdvlGKC1GYeWAqrIHE3DZX2qLlzwJgnExnwbLwi1k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YPsFXy1lqVid3qsFTFXsq3CfwvXYUgnkeV/XvwIerRdr7UWSKKXW7FY7Yonr/RmoX
	 EzMcYZAPGZ5OFC6yMlwNqxi9vo82rNxigIvWPVrMpLb0Lshm8jMF82+kE8AUIZUoSy
	 7nn/GEujdPuNz8sms4QLC6xn317H2AqdH+kgWMY0=
Date: Tue, 30 Oct 2018 19:48:26 -0400
From: Sasha Levin <sashal@kernel.org>
To: Shayenne Moura <shayenneluzmoura@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Michael Thayer <michael.thayer@oracle.com>,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: vboxvideo: Remove
 unnecessary parentheses
Message-ID: <20181030234826.GE194472@sasha-vm>
References: <20181023174304.iq4ra7vafwujr3ex@smtp.gmail.com>
 <20181030092539.GA10009@kroah.com>
 <20181030231757.24ooubt25oykmgkt@smtp.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20181030231757.24ooubt25oykmgkt@smtp.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Oct 30, 2018 at 08:17:57PM -0300, Shayenne Moura wrote:
>On 10/30, Greg Kroah-Hartman wrote:
>> On Tue, Oct 23, 2018 at 02:43:04PM -0300, Shayenne da Luz Moura wrote:
>> > Remove unneeded parentheses around the arguments of ||. This reduces
>> > clutter and code behave in the same way.
>> > Change suggested by checkpatch.pl.
>> >
>> > vbox_main.c:119: CHECK: Unnecessary parentheses around 'rects[i].x2 <
>> > crtc->x'
>> >
>> > Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
>> > Reviewed-by: Hans de Goede <hdegoede@redhat.com>
>> > ---
>> > Changes in v2:
>> >   - Make the commit message more clearer.
>>
>> This patch does not apply to the latest kernel tree at all :(
>>
>> Please fix up and resend.
>>
>> thanks,
>>
>> greg k-h
>
>Hi Greg!
>
>Sorry, I do not know what branch are expected to be used.
>I used the drm-misc-next to create this patch and I could not
>find any merge problem.
>
>Could you please tell me the details?

Hi Shayenne,

There's an easy trick for this: the kernel tree has a script that can
help you find both the relevant maintainers, and their development tree
for each file in the kernel.

Simply run:

	./scripts/get_maintainer.pl --scm -f [filename]

For example, in this case, you'd run:

	$ ./scripts/get_maintainer.pl --scm -f drivers/staging/vboxvideo/vbox_main.c
	Greg Kroah-Hartman <gregkh@linuxfoundation.org> (supporter:STAGING SUBSYSTEM,commit_signer:10/10=100%)
	Hans de Goede <hdegoede@redhat.com> (commit_signer:7/10=70%,authored:6/10=60%,added_lines:31/37=84%,removed_lines:153/159=96%)
	Fabio Rafael da Rosa <fdr@pid42.net> (commit_signer:1/10=10%,authored:1/10=10%)
	Alexander Kapshuk <alexander.kapshuk@gmail.com> (commit_signer:1/10=10%,authored:1/10=10%)
	Nicholas Mc Guire <der.herr@hofr.at> (commit_signer:1/10=10%)
	Thomas Zimmermann <tzimmermann@suse.de> (authored:1/10=10%,added_lines:2/37=5%)
	Daniel Junho <djunho@gmail.com> (authored:1/10=10%,added_lines:2/37=5%)
	devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
	linux-kernel@vger.kernel.org (open list)
	git git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git

The list of people and mailing lists are the ones that should be the
recipients of your patch, and the last line is the git tree on which the
patch should be based on.

--
Thanks,
Sasha

