X-GM-THRID: 6618908371010453504
X-Received: by 2002:a24:5e81:: with SMTP id h123-v6mr1765542itb.33.1541699669727;
        Thu, 08 Nov 2018 09:54:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:70d1:: with SMTP id f200-v6ls481992itc.8.canary-gmail;
 Thu, 08 Nov 2018 09:54:28 -0800 (PST)
X-Google-Smtp-Source: AJdET5ewxngRbcR6r1K71zQq9uLIepxVyP6Y0/el420t1kARpeQ+O0ifAjHowjbvOaeQklh83Xdn
X-Received: by 2002:a24:2212:: with SMTP id o18-v6mr1712326ito.24.1541699668882;
        Thu, 08 Nov 2018 09:54:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541699668; cv=none;
        d=google.com; s=arc-20160816;
        b=nLlAUpEgCA8jCPMwdlUPP8lroz1q/AktCCUAguDC5lWd4Zt06w7AKNyBeFshauQf3E
         42JYJv9r0TYQJzCFkpZ1pnjTKBEr/QkKRFXplbEkAn448n2MT6SDs2/ofy+GaLAZyrIk
         GOmBq4Lu7fBuDqC/vFZZEjRCi57G6h++VR+p/LURtM0CmJ716AmfyfRkfsenD4SWO3Mj
         aRNQ29y5U1dkKs0JCpXuAzHTDFJDz6bD3EPW2eT91s1m6RKUCAY0V4xVYW++ywe3/x0b
         GR7qYmF5swhxzS8bFwpyelwiCKKDOgAuRlvtxpY9Xo+Oz5/YjScO1ID7MTCZcC163DnO
         DqAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=GVUAYpG0X+mGwtO3vy2pkp+D7Ty/6deYmTsJjhxlfvI=;
        b=IbREhP/F0HmtPDefu1QACn2sHanj/uwttEXiy4w+MvzlJ4D2Oz4dvtO/VDi5RFFW3W
         VTZvuEew6Vp0lIUdjy+QfhJTxfCe8w8YpoOhNMDHv0dEYT8WsiXn6jhJL3Co0Sya8MrL
         nXVmPZKMZAI+ycg3Gm+DVy/sEGjzvccLia4AmZWjpxJo7Uhh4lOVLT/N0MjlwM0m6cTJ
         JIXAhaFl759X2tD2kfdSENEPj6wcc8MpjMn1KQ3i11vCTBSGvK511jxmvNo1IU/nhmeJ
         ayn6FG2jhh5LtiWaZIB+qhFvGYoj0MfqxsINjjDysDCe07R100rHdHH/bQLpEOjM4boo
         zG1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cdWdDLeq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <sashal@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b81-v6si222905itb.1.2018.11.08.09.54.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 09:54:28 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cdWdDLeq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from localhost (unknown [167.220.2.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1DE0020684;
	Thu,  8 Nov 2018 17:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541699668;
	bh=MOW/ggFbbWOTcZt6WIJZFM3xL5bz5MVq/hz9XO5uahg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cdWdDLeqNdwmJFVDwpX70s+Gtp0mzy+3xbqPbDegxcxVa5agRa4XKuTwbgueTGQIb
	 1QsPZs4nkpjnGY+jvdiqeHvlkerk50E8bfX4pdU28S/hLI75Moil4+M1VRXoZkknAx
	 gonYi1aN3Vyfrd30OlrgzfZ5Ul+rROXybSt9MaHM=
Date: Thu, 8 Nov 2018 12:54:22 -0500
From: Sasha Levin <sashal@kernel.org>
To: Dafna Hirschfeld <dafna3@gmail.com>
Cc: ezequiel@vanguardiasur.com.ar, helen.koike@collabora.com,
	hverkuil@xs4all.nl, mchehab@kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH vicodec v4 0/3] Add support to more
 pixel formats in vicodec
Message-ID: <20181108175422.GA14882@sasha-vm>
References: <cover.1541451484.git.dafna3@gmail.com>
 <CAAEAJfC=R3U9Pz0K5MkYT1Y0FM=PA2e6uUfbYL3sfDuobCWMDA@mail.gmail.com>
 <CAJ1myNSJ5RtaJgAubNyxmH-JrZdVpZtjHL6-jDhW65oStqX-Ow@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <CAJ1myNSJ5RtaJgAubNyxmH-JrZdVpZtjHL6-jDhW65oStqX-Ow@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Nov 08, 2018 at 10:10:10AM +0200, Dafna Hirschfeld wrote:
>On Thu, Nov 8, 2018 at 2:51 AM Ezequiel Garcia <
>ezequiel@vanguardiasur.com.ar> wrote:
>
>> Hello Dafna,
>>
>> Thanks for the patches.
>>
>> Just out of curiosity.  Why these patches havent't been submitted to
>> the media mailing list?
>>
>> Hi,
>I wasn't sure if I should send it to the media mailing list, since this
>part of outreachy application.

In general, for any patch you send to any subsystem please Cc all the
relevant mailing lists and maintainers. For Outreachy application you
already did that (by Cc'ing Greg), you just need to keep doing the same
as you continue your work on other parts of the kernel.

>Also, how are you testing these changes?
>>
>
>Based on Helen's decoder:
>https://gitlab.collabora.com/koike/v4l2-codec
>
>I extended it to include encoders and decoders for the new supported
>formats.
>
>testing formats with alpha plane:
>https://github.com/kamomil/outreachy/blob/master/argb-and-abgr-full-example.sh
>
>testing greyscale:
>https://github.com/kamomil/outreachy/blob/master/greyscale-full-example.sh

It's awesome seeing these testsuites, it gives reviewers confidence that
your patch is well tested and they can focus on other parts of the
review process rather than check for the basic correctness of the patch.

Please include links such as these and indicate how you tested your code
in your future patches.

--
Thanks,
Sasha

