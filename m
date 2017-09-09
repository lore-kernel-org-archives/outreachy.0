X-GM-THRID: 6463670591377375232
X-Received: by 10.46.18.149 with SMTP id 21mr50809ljs.28.1504946170790;
        Sat, 09 Sep 2017 01:36:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.215.13 with SMTP id o13ls90884lfg.1.gmail; Sat, 09 Sep 2017
 01:36:09 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb57JbmAqsgFKEHTnZzBIAuOrgEJgbUumWA/8BL9TT1g6l2u2q+ZXZLpARZEf+Q1CWmwi/N6
X-Received: by 10.46.88.9 with SMTP id m9mr377853ljb.19.1504946169159;
        Sat, 09 Sep 2017 01:36:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504946169; cv=none;
        d=google.com; s=arc-20160816;
        b=KeSLbDENF2VyXiVfD5LSygl4eCvgTESJb0wNMs/ZMjyIum8A0qYlHMv4+OOJEANyZg
         eHojKjk+LOvoA9S3/mzuLP04BegLoDxTOCbiBv3g672ZRwhHNmLDAFelXBhZ5rs1Zl9A
         i8uUDCnDGyuAOBCj8nYb/28V46y5JDZ9rzRZV3SJvvFtoeFTyffTCGM7IPD1QcRZa/ri
         ni+ZoFbBB5UdQXzMZuAOvl0nPuhBt307NUhoEQ0aDMcWyO+c1IFEf6hvNaNfhZSXzjkh
         FV46O2R1XsFP0Dpl1/PmI+ZdmZWEKyVuXnjuyp1SBJM4JfRLb48ninWOFXzfHeKXQt0y
         /O0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=eyEex6PZp5q6w8dR9HYz5ydfYQXClQxF9BF9MWHlmcI=;
        b=rr6+vhG+uzvb3I2ixMKfjV4NngcjYQdsoAhSc9cbH03JMw9PsYBErWheYFdxHa7r04
         FH4i6mhjc/TtDaZDWeY8nvb9BLn5NSPav8OEZDb8ciTXvhM4Neocs4QgFe44HOhk5Eco
         mv9eQT5vyA+IHkbCSEOqgKTJ4jrGgEOA0IO8qS+kHXavnhf0vbAfxuqBTXXaN3+q5B7Y
         5wBk2yuc9PNDTNfI5F8W7MmGJjYesnYDsOh7RXCRYIMNdH0WkmiNTt8WraCa8pFWMIGV
         /v6o/A1HjgNkRNpnsKuFZaFhwviZtIP1Ep5GGtzpZiro9ds/wgpDdQaCCDfQoSf8eTco
         zHrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i90si247717wmh.5.2017.09.09.01.36.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 01:36:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,365,1500933600"; 
   d="scan'208";a="236864537"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Sep 2017 10:36:08 +0200
Date: Sat, 9 Sep 2017 10:36:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: Harsha Sharma <harshasharmaiitr@gmail.com>, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: unisys: visorbus: Declared
 char * array as static const
In-Reply-To: <20170909071451.GA27010@kroah.com>
Message-ID: <alpine.DEB.2.20.1709091034170.2025@hadrien>
References: <1504940442-27511-1-git-send-email-harshasharmaiitr@gmail.com> <20170909071451.GA27010@kroah.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Sep 2017, Greg KH wrote:

> On Sat, Sep 09, 2017 at 12:30:42PM +0530, Harsha Sharma wrote:
> > State explicitly that individual entries in array will not change.
> >
> > Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> > ---
> >  drivers/staging/unisys/visorbus/visorchipset.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/unisys/visorbus/visorchipset.c b/drivers/staging/unisys/visorbus/visorchipset.c
> > index 6d4498f..6f2a010 100644
> > --- a/drivers/staging/unisys/visorbus/visorchipset.c
> > +++ b/drivers/staging/unisys/visorbus/visorchipset.c
> > @@ -1162,7 +1162,7 @@ static ssize_t deviceenabled_store(struct device *dev,
> >  	struct controlvm_message_packet *cmd = &req->msg.cmd;
> >  	char env_cmd[40], env_id[40], env_state[40], env_bus[40], env_dev[40],
> >  	    env_func[40];
> > -	char *envp[] = {
> > +	static const char * const envp[] = {
>
> Are you _sure_ about this?  Why make it static?  That seems a bit "odd",
> don't you think?  You need a lot more changelog text to get everyone to
> agree that this is ok to do...

Harsha,

Study carefully what static means when it is attached to a local variable.
And be sure that your code actually compiles.  If it doesn't try to figure
out why not.  There are other commits that are sort of like this on in the
kernel that you can find using git log.  But you may notice that they are
different in some way from yours.

julia


>
> Also, you forgot to cc: the actual maintainers of this code...
>
> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170909071451.GA27010%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
>

