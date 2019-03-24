X-GM-THRID: 6670745270189293568
X-Received: by 2002:a9d:63c9:: with SMTP id e9mr13304060otl.76.1553417966622;
        Sun, 24 Mar 2019 01:59:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4143:: with SMTP id o64ls2273008oia.8.gmail; Sun, 24 Mar
 2019 01:59:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz41ugwOG73g8XG7kn7Te+muZl2kAmbWSzCiHGyfelae0igs53+074IGq7rPdSgZxa1ZImv
X-Received: by 2002:aca:d608:: with SMTP id n8mr8027486oig.35.1553417966146;
        Sun, 24 Mar 2019 01:59:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553417966; cv=none;
        d=google.com; s=arc-20160816;
        b=0mEi1/7+gDMhDvMzw2gBYJovtUZJU8G2v+U5PH8VqFYpHv7JoIx2vsdhEaihvF3JRR
         P21bw6pDA+qf0sXLJ+d17Sx4MvAGmAJkv0rKxlIeRspGEMM4LTJowgBBGmmiLsEv4aPJ
         rY3XhpHkV+QEYqX9VFLvtSrL4hcZXkSuUhYYF3ggB3Oi//o+aizeX/aJno9u/khK4neq
         VZA0iHjFkyn7Y+pUvsehzTkX65LXUwaniCmtMaLTQQ07T+i3+EGYpYA+YXnt1ZAsNcgY
         PmjdgPDE01qaezf4bmQyyohlQ2LgAyPbgz2HxsinBYPwOG36QshUgDsbrJaHhAaoXFeh
         nCDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=WCHKqtq0cSxtdz0SPLvNst0L+/mBqEV5ak1hEHKGMsg=;
        b=KWyq/6oOckCkpsLyDDGKZ+O72GTFY33tAv/H/ijlZcFHx7v8gjfkVMam7ix2SsxVFT
         J7paTdCiOEV3rxhjlZ9B/uw2dmbWuaM5bVdpG3bbZcSwJaRRWNOZ+wkStW8iaJ9HlO3L
         YERly4y0hgkeb/dWz2A2WlImF0/1JJf4Z4waULtFELlwQ6wsfI5LyiZFuQU/4ozkn3tp
         zKbMct6smU6QHX+vm5lx3ELh7WIEQNRlgQ/4VC6+7rpAaje+6HArJ65cRmiBFlGlF28d
         twEPJcnuACbBC9PDVMvm7t1pQlHEZLvzHKfFyt5BPUm4DWmb3vPxVs6CFE36EZqt1jG5
         GSSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="yB4hZy+/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p8si748011oig.5.2019.03.24.01.59.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 01:59:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="yB4hZy+/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.248.140.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EEF6B2171F;
	Sun, 24 Mar 2019 08:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553417965;
	bh=i0P24oIxeqwyyY1lJmeYCU5ZY/48Eg7dhR0ia5s11PM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=yB4hZy+/AMe9gkSLote0zPyKHVICWXGJRUAZxk0+lV3KETEWSTGAbrc8J4BJZwdPC
	 VbiEr2fCmK7RawZ2J14FSI1MLSHopkZhN9piAkW6HAKlPdStyNDwidFC3ouZ3gxW1d
	 A+rzOCVZefRqmMMwYjMmQwZKBClc7PMj2s/Yzjm8=
Date: Sun, 24 Mar 2019 09:59:23 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: greybus: svc_watchdog: Modify char* array
 declaration.
Message-ID: <20190324085923.GA32103@kroah.com>
References: <20190323112807.9804-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190323112807.9804-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sat, Mar 23, 2019 at 04:58:07PM +0530, Sanjana Sanikommu wrote:
> Modify "static char* array" to "static char* const array".
> Issue found using checkpatch.pl
> 
> WARNING:char* array declaration might be better as static constant
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
> Changes in v2:
> Test build the patch

No you did not :(

It blows up the build into tiny pieces.  Please properly test build your
patches before sending them in.

greg k-h

