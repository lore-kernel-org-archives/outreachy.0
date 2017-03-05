X-GM-THRID: 6394051769917243392
X-Received: by 10.46.87.80 with SMTP id r16mr242403ljd.12.1488741303668;
        Sun, 05 Mar 2017 11:15:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.214.193 with SMTP id n184ls882256wmg.22.canary-gmail; Sun,
 05 Mar 2017 11:15:02 -0800 (PST)
X-Received: by 10.28.148.1 with SMTP id w1mr129629wmd.5.1488741302577;
        Sun, 05 Mar 2017 11:15:02 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id 82si11153wmg.3.2017.03.05.11.15.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 11:15:02 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id u48so19306898wrc.1
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 11:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=z7r8N1suiPxWhrJMb5qhp77FFUMEf+RllbxhlPvpOt4=;
        b=eSQCHxLjmLH9TCcTf/kagDCS1krkCiNJEQENpgNPE4Y+N7WVB/OrBhSc8jrkN94DUQ
         aNZ+3CEUd/EAp3TgETe1Rii1X5XA5IbKV62fMcyM90APp6YKp31mFVxQZ/L6R3pNEGcW
         5s7lpTiv51lsZq3DMK+Eslg+pvRBJ13QC81oaej15ooqD3V90IiO08mg5IQBGPN2B1cv
         Giw3+MMzPgse1jm+YBnfrEfwHFzCYzJwCMTOgO8cqfDf7CBjfRV6918vwb/TiO/2jCE7
         CCe9Wwo+CuNKUCnrsm0Q3/ztFlSD7hYQanDOydqci1fYhJNYgL9IyHvZD4dIHLNsDI6B
         SGiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=z7r8N1suiPxWhrJMb5qhp77FFUMEf+RllbxhlPvpOt4=;
        b=S4J/ks9nqNkbUqmhC1nNPh8hIw3e9i4ZqGMEXHjLZEB7ZOsfGKAMm/dudSLYEd+arm
         HwL3fNZQYpSiZxNU4pMU628xVLZcIb27h3Fs8fAlpoPPmeQL03oC4QstgyMe3wnnWqix
         zPPf6HNiGsu47oJ8jlNjuzqdj/008/6y9oDJRKnoviQ1zr9wQOyoVT6Vu2qsmsTWvp5R
         /deioookhipON430D2TgzvHY42hX9dh3XVtSFq8VLPhhh+BB9QGEyMGXJ3hX9+ZPvwpF
         WLYuVqmTeyPwm3dl0kywDM+VlcVDBndQwvz59jIDC0QLHAYXZpDtp4AGF9To38l4pfOb
         LsxQ==
X-Gm-Message-State: AMke39md/U2lEmE+JmePqF7BVbyOyRW3bGNk8mYLGaSIxfEEmGGS3BqJIjPkzrbnudhhkw==
X-Received: by 10.223.172.101 with SMTP id v92mr12561393wrc.49.1488741302382;
        Sun, 05 Mar 2017 11:15:02 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from nati-X550JK (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id y43sm19612560wrd.0.2017.03.05.11.15.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 11:15:01 -0800 (PST)
Date: Sun, 5 Mar 2017 21:15:00 +0200
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Alison Schofield <amsfield22@gmail.com>
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: iio: accel: Group
 similar macros into enums
Message-ID: <20170305191459.GA20822@nati-X550JK>
References: <cover.1488730643.git.narcisaanamaria12@gmail.com>
 <20170305185828.GA3380@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170305185828.GA3380@d830.WORKGROUP>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sun, Mar 05, 2017 at 10:58:29AM -0800, Alison Schofield wrote:
> On Sun, Mar 05, 2017 at 06:26:03PM +0200, Narcisa Ana Maria Vasile wrote:
> > Group related macros into enums, for clarity.
> 
> Hi Narcisa,
> 
> Is this enum then used in a type declaration?
> 
> BTW - I can see Jonathan is following right along and sweeping these up,
> but for future reference, this patch depended on a previous patch sent hours
> earlier, that was not yet in staging-testing.  When this happens, one option
> is to give a note below the --- (as you would for version comments) stating the
> dependency.  This way someone reviewing the patch doesn't simply reject
> it as not applying to my tree.
> 
> alisons
> 
  Hi,

  Do you mean whether there are any type declarations where I could
  now replace the type with the enum type ? If so, I searched for 
  these type of situations, but didn't find any. If I missed one of
  these cases, please let me know and I'll send a new patch.

  Thank you for the note about the patch dependencies. I was just about
  to ask about this, cause I realized there might be a problem.
  I'll keep in mind to make a note next time.

  Narcisa

> > Narcisa Ana Maria Vasile (2):
> >   staging: iio: adis16209: Group similar macros into enums
> >   staging: iio: adis16240: Group similar macros into enums
> > 
> >  drivers/staging/iio/accel/adis16209.c | 18 ++++++++++--------
> >  drivers/staging/iio/accel/adis16240.c | 14 ++++++++------
> >  2 files changed, 18 insertions(+), 14 deletions(-)
> > 
> > -- 
> > 1.9.1
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1488730643.git.narcisaanamaria12%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.

