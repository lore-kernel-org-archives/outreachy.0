X-GM-THRID: 6464167912849539072
X-Received: by 10.28.154.68 with SMTP id c65mr70800wme.5.1505248876681;
        Tue, 12 Sep 2017 13:41:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.178.75 with SMTP id b72ls557272wmf.27.canary-gmail; Tue, 12
 Sep 2017 13:41:15 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb68W3P261RT4oBsBcse6IjuIJlQda7iYqy08p98HUCMkfEFTSvuEvcX6P8xkDGqPMxyTr2H
X-Received: by 10.223.175.194 with SMTP id y2mr909741wrd.8.1505248875413;
        Tue, 12 Sep 2017 13:41:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505248875; cv=none;
        d=google.com; s=arc-20160816;
        b=LFT4RAms/tPFzFvdGCyk0L6h6rUyzI6LdpmZmuX7XEgAMbUoWCkrDU5xQIdLj4jJS5
         3IgbnfDtV012FSyKITY8bP7DElVLxEW0FJN7MwJLD70aD6QFfCx1HyBOqEBnz00pVAam
         IebMIPW0iY+K6jKcSy8A0yC3mTLYbDw2b1tqH/GeiZbcA/ShaZZ4lJce74TqRdKGk6pT
         sAEB+FtAnEG9qznWMhqxBbYAnB1umEluCOFjU+XD659PIYlskyuVOaJmavbDveAqNUvz
         fFYc1bwWIsEsEYgKeKT1RyUivK/M2NNTVAtODkfzhUYGArjogVHr/MQfQVfsOjd6cdSF
         /NgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=Rv83vFY1+MhkFDMgtHi6cHiFy9fKVPK9ndH9hMLFkvQ=;
        b=i3UeeDUt9zIU+/jHkc0caOsbvCqMOtk/qC+d8gsGWgnr2JzSeAVT8FDoCvjtuPgAfP
         m4MCVIhVhaPKohafbY5RWGB57+ZgcEXdkl93vdgNLQcMBDTurA4GRMautl46slLIxLEG
         mA3pPHzhnMf9CEF2Ohddd4ftHLVkbl5rm7o/8QvDqrqt4J5FGHzcjPqrjBQk/Y0fqkwv
         4uMhwfNz7Edo5ulnJh9nqBq0ayphya6x4G7MOM+zzogpq7e3+6MR9Z0hQ4sMnolp3WZ8
         65qZRaGYGNKdx9RxpsdM5iPHEBzG5586OPfKx/TOb+/PkiJ7OSnxOShp9qtfifAJaQR4
         Uniw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id p70si177466wma.1.2017.09.12.13.41.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 13:41:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.145.98.253])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D5107ABC;
	Tue, 12 Sep 2017 20:41:13 +0000 (UTC)
Date: Tue, 12 Sep 2017 13:41:13 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 06/10] staging: rtl8723bs: Add space after ','
Message-ID: <20170912204113.GA20215@kroah.com>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com>
 <1505223323-4038-1-git-send-email-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1505223323-4038-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Tue, Sep 12, 2017 at 07:05:23PM +0530, Harsha Sharma wrote:
> Space required after ','
> 
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
> Changes in v2:
>  -Rebase against staging-testing and solve merge conflicts
> 
>  drivers/staging/rtl8723bs/os_dep/os_intfs.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

Where are the rest of the patches in this series, I only seem to have 2
(patch 6 and patch 7 out of 10.)

If you have to resend patches, please always do so as a unique series,
If I have taken some of a previous series, please then send the new ones
out as a totally unique series, as that is what they now are.

Remember, make it totally obvious what I, as a maintainer, need to do
here.  I have no memory of previous patch submissions, or what happened
on something else somewhere else.  I deal with thousands of patches, and
as such, have no short-term memory :)

thanks,

greg k-h

