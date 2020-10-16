X-GM-THRID: 6883926801253400576
X-Received: by 2002:a17:902:d34a:b029:d3:dcb5:a84c with SMTP id l10-20020a170902d34ab02900d3dcb5a84cmr2936423plk.81.1602839690706;
        Fri, 16 Oct 2020 02:14:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8b8a:: with SMTP id ay10ls1043572plb.6.gmail; Fri,
 16 Oct 2020 02:14:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy6jcaT6BD10igcdjgTVVr3pEO+mjXzzFX9tHTe+8A4Ncu4drgFYoQxXpoAQJxw+SlS4cI+
X-Received: by 2002:a17:90b:3587:: with SMTP id mm7mr3231453pjb.234.1602839688763;
        Fri, 16 Oct 2020 02:14:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602839688; cv=none;
        d=google.com; s=arc-20160816;
        b=bP5YLmV7STEIeYRMOvdG57EivOaAfPzojC+723mrJMSuKZjn9qF5Kd32VdkJSHViRg
         0N0cdxk/Wu6o1NUtXWFXbXk28fs40e628lOnI3NgOoIUQ/YNheUJkSia1jr0O8C4xttf
         hzHu9X37qlNkN50hcAeM1nM1c75RKzcWLNnD1TJii2oPa8bwjru2lFAc7KtoR8mSxkNe
         abzgHX5C6EFI+GXl8BVY0RQep9BrJsuShXNqisPoqRkNMiOu14hyQe0dJOlVHmEWyD/d
         BferWkJeB8mNepeyomZsabe5hg6TdP8I1IEiL9ipc7wRYh6nnhyKXAkfQ/HvUCuX+jZH
         oAYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature:dkim-signature;
        bh=gOjUcnwEt3S4QSN/DpL3eWkO9bCWu8gipjoS5O6skq8=;
        b=eCsR3z4PcJ67TWwnfeSeIZr5C3BNkjzLtrS6Snc5tB3YCtLiYuvF+nAeeG8yv7Ye5B
         S8Lg7w6Xtq6FYtB+i2GEmu2xcH4zbaEJXp1xQi8y0fzCaYWpCpNjUaDMxtHgW353r25o
         byHrIVWg3CwHJBfiMjFH5KOcVT1uO9dat6E2tJeCv3nt2+6k0mQjdCr8ebEwoGo73c0N
         Ewght05JeQrY+fMp5JP9tfwj68rQwBzQEdvzs6nLUqPe0TJXx5nhCwOizTQNq6U+hTSt
         coVehYhX/wdkGa2kcf4xNjA6uIyq2K57P/qwuuamc96GmTTgSnI7pz83Xp+tdTuq8vKk
         eeoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@g001.emailsrvr.com header.s=20190322-9u7zjiwi header.b=CB4Hn1wK;
       dkim=pass header.i=@mev.co.uk header.s=20190130-41we5z8j header.b=HHZkNHX5;
       spf=pass (google.com: domain of abbotti@mev.co.uk designates 173.203.187.82 as permitted sender) smtp.mailfrom=abbotti@mev.co.uk
Return-Path: <abbotti@mev.co.uk>
Received: from smtp82.iad3a.emailsrvr.com (smtp82.iad3a.emailsrvr.com. [173.203.187.82])
        by gmr-mx.google.com with ESMTPS id q2si108380pfc.0.2020.10.16.02.14.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2020 02:14:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of abbotti@mev.co.uk designates 173.203.187.82 as permitted sender) client-ip=173.203.187.82;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@g001.emailsrvr.com header.s=20190322-9u7zjiwi header.b=CB4Hn1wK;
       dkim=pass header.i=@mev.co.uk header.s=20190130-41we5z8j header.b=HHZkNHX5;
       spf=pass (google.com: domain of abbotti@mev.co.uk designates 173.203.187.82 as permitted sender) smtp.mailfrom=abbotti@mev.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
	s=20190322-9u7zjiwi; t=1602839687;
	bh=+zxDewxSA6xWcOj4RzloONQKkjLwUQoVfRxvMOAOZ4w=;
	h=Subject:To:From:Date:From;
	b=CB4Hn1wKIXezFakDIyb1adX4fzSbqPHAGjvzQGjV3v7kpHJYqMPJgLrQEIOufoEUj
	 q5ugtcl5i7Gv7lVhxvc330kXt7HSpjd74SYY7v8Aw3DcH/2jrVZj2auS8VckGIGbaf
	 oENnc+UJbOEjLMfRQWIo1Rb8GnK2yxoO8Jx0xDgQ=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20190130-41we5z8j; t=1602839687;
	bh=+zxDewxSA6xWcOj4RzloONQKkjLwUQoVfRxvMOAOZ4w=;
	h=Subject:To:From:Date:From;
	b=HHZkNHX5J7LliXNnFycT02Axc25EjR5UeaVBUQs9jK+GXdqTTTzyV7EEGh2KeTOWT
	 2px93jRrKWHmnSc6i6kIA4k43EyesrCaZ/kqxnqkq6P54aUw1fd/S9LR733c4EsarJ
	 8KKV6AJEus4w3Lj09m57urJ1W+UuYNYEHHWXDWpY=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp3.relay.iad3a.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 453C2249D9;
	Fri, 16 Oct 2020 05:14:47 -0400 (EDT)
Subject: Re: [Outreachy][PATCH 3/3] staging: comedi: Replace snprintf() with
 scnprintf()
To: Sumera Priyadarsini <sylphrenadin@gmail.com>,
 outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, hsweeten@visionengravers.com
References: <cover.1602767114.git.sylphrenadin@gmail.com>
 <233169195737b5f3afd429d8b6572f3b531168cb.1602767114.git.sylphrenadin@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <825f5868-49f4-509d-638d-5fcab59c8f1a@mev.co.uk>
Date: Fri, 16 Oct 2020 10:14:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <233169195737b5f3afd429d8b6572f3b531168cb.1602767114.git.sylphrenadin@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Classification-ID: e90156eb-069f-4802-837f-5746698c10ca-1-1

On 15/10/2020 20:18, Sumera Priyadarsini wrote:
> The show() methods should return the number of bytes printed into the
> buffer which is the return value of scnprintf(). snprintf() returns the
> potential number of bytes that could be written which may be greater
> than the actual length to be written.
> 
> Replace snprintf() with the safer scnprintf() in comedi_fops.c.
> 
> Issue found with Coccinelle.
> 
> Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>

The patch is fine, but there are a couple of problems.

1) Patches for "staging" should be Cc'ed to devel@driverdev.osuosl.org .

2) It appears to be part of a patch series, but I have no clue about the 
other patches in the series because I haven't seen them.  The patch 
doesn't look like it depends on any other patches in a series, so it 
should be a standalone patch, not part of a series.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-

