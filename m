X-GM-THRID: 6667559870599790592
X-Received: by 2002:a9d:6050:: with SMTP id v16mr22490162otj.39.1552413830006;
        Tue, 12 Mar 2019 11:03:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:afc2:: with SMTP id y185ls798744oie.4.gmail; Tue, 12 Mar
 2019 11:03:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwQy/N35tjm9lphLt1pWsmt/kkAoVgslxaknODJXufiw49xL2k0V7qOsosVDOFf9gWPLu0o
X-Received: by 2002:aca:55ce:: with SMTP id j197mr3000304oib.55.1552413829253;
        Tue, 12 Mar 2019 11:03:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552413829; cv=none;
        d=google.com; s=arc-20160816;
        b=Oj84GsyoIYsFc1jC0CbFynQgeCc6d3gzE+GIMboljiCnc1hkZn3ycMC+TsGRecuFwa
         BG9BICRKT7GllG77Se/Hlxl9GCDVo8W8zdFrQVnBhOR8zQG9gFQqbz9oEu3TzL2We105
         iuOnV/voskIsJ6kqfmB5m18gimOLTdsGb5cRdytiE3dlIcnbI4MsVVLIjWXLqc2sB1Ie
         8LnS6hlOkbaMROXooZSALYXWTuk+qOyqTTfpFLPRV1ZYauoY/gpsKYLXOjCkptLIcvEa
         +Yz2Z2uQ5r5louWElWarzzGxPy5viK6TiFZlm9V2aU8NcGVtE9HhQOEczZ84unqKhcgf
         SHHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=6g3oGlaVxnZxzYP0gm+yt0wCIExposgDDpBS2/fFQ7Y=;
        b=dqBhm5GIX6krDW/ysR4FWgijVAnmc70Z3pnwZg5L2e/f83qFAYoDfYjTMdXS6gJbdp
         ISL/y0YggGRBYi6fUdW+KhPF2kdZIHiUyj1JfH9GoFiAt2qzWfcL62VZQNMctBkHwTmp
         BpoKFtGRvWj8Nqegmabtf+kZK3DUZkYQo3jwI/y+FQBmdulJIxRqM7RXYLyhS1GGI91a
         RCv5o8qDgdAJ/9JCbsXW+y1m34C4DBozB6HEksgacAOZPj6jpgjRYcnnTP47YP6bIG/S
         alada5qvQnnU14qHpv2KcMACtTBM8gYLFBio8pJNbIQeqdkczNExXM8YOAGn0M31qmIC
         T4VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a9rP09jw;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id q206si497130oic.2.2019.03.12.11.03.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 11:03:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a9rP09jw;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x242.google.com with SMTP id g16so2892326oib.1
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Mar 2019 11:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6g3oGlaVxnZxzYP0gm+yt0wCIExposgDDpBS2/fFQ7Y=;
        b=a9rP09jwrTsKMhp07lvFxH0NaMtOQS8PpmzzAaetihMNy2B9+C0oBjyIVnEhP63FOh
         qjmHX4wtTZU/Z98kjRXInPssLh2izbAzB7P1o7QsZIgZU3yvV7p4TqoZdsWCzzEW92U+
         fO0CXSsMcPOUYszbgdbSV4BIXZG6AMRnOB3ql9hBRIRBujsEo4Nm9NFhwvwWgo16M1mr
         XaRLULFbN/rLFSK5BL+CYeZa1aqzEo4bCqHDZdj8xUs/DISOvpYuyt6v60dsGkOv8/IS
         RR+YQV2AcWBF66Nr/rYHGwiHNXjrZTAhF2EyD8Cpo5Whip2BL/z3mf3NPIVd690GEz28
         kpKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6g3oGlaVxnZxzYP0gm+yt0wCIExposgDDpBS2/fFQ7Y=;
        b=D2q6sVienz3FIn9aArHFu/6YwPnCJG0fHFETA4i7MWx1/j9/KX8wbeSK1fn8vWd3r3
         2LBSuodRysV3IToNXOt5RnCfJCcsGehKnowN9YCAVotgplq2lCYJ8eNMHKGsfFiKa5LF
         0QDBNblc6+LqhMsok6I/VHjIp0mnI7u79FEZoqYXGLGJK1t95F5VPdtDKjg8Mjti6WWc
         X2qLtn+9eQJ4VABBX/8/4qhIREhvU4et3mkaSx/AZu7MGmlwnzOvyEpDlxg4fxb5fWn/
         L4ItfDAc+sNbw8y74/HetKJqSN4LRce2+aPRumRIhFPXtY5A8quxwe4Yec5QX+BVUfnQ
         7lCw==
X-Gm-Message-State: APjAAAXv0tOIEebACLZmlMnHByxAyjc2oQCqi6UGkA5XDpX5pCqpAp/f
	Vadr+4jcCfNDm5gN2EDtNCvbkrG3ks0=
X-Received: by 2002:aca:b406:: with SMTP id d6mr2450106oif.148.1552413828609;
        Tue, 12 Mar 2019 11:03:48 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:9838:e357:690:7f06])
        by smtp.gmail.com with ESMTPSA id l63sm3733409oig.46.2019.03.12.11.03.47
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 12 Mar 2019 11:03:48 -0700 (PDT)
Date: Tue, 12 Mar 2019 13:03:45 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Remove an
 unnecessary initialization in function
Message-ID: <20190312180344.GA17075@madhuleo>
References: <20190312173730.23281-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.20.1903121850370.4097@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1903121850370.4097@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 12, 2019 at 06:52:44PM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 12 Mar 2019, Madhumitha Prabakaran wrote:
> 
> > Remove an unnecessary initialization of local variable dt_stat in function.
> > Issue suggested by Coccinelle using ret.cocci.
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/speakup/speakup_decpc.c | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging/speakup/speakup_decpc.c
> > index 459ee0c0bd57..3ad49bb93829 100644
> > --- a/drivers/staging/speakup/speakup_decpc.c
> > +++ b/drivers/staging/speakup/speakup_decpc.c
> > @@ -233,9 +233,8 @@ static struct spk_synth synth_dec_pc = {
> >
> >  static int dt_getstatus(void)
> >  {
> > -	dt_stat = inb_p(speakup_info.port_tts) |
> > -		 (inb_p(speakup_info.port_tts + 1) << 8);
> > -	return dt_stat;
> > +	return inb_p(speakup_info.port_tts) |
> > +	       (inb_p(speakup_info.port_tts + 1) << 8);
> 
> This doesn't look correct, because dt_stat is not declared in this
> function.  Did you get this result from the semantic patch that is at:
> 
> https://kernelnewbies.org/JuliaLawall
> 
> That says "local idexpression ret;", so it should only report on the case
> where the variable is declared in the same function.
> 
> julia
> 
> >  }
> >
> >  static void dt_sendcmd(u_int cmd)
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190312173730.23281-1-madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903121850370.4097%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

Yes.

1. I created a file in home ret.cocci, which is 

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret; 

2. I run a command 
spatch --sp-file ret.cocci --no-includes --dir git/kernels/staging/drivers/staging/ > ret.out
which generated this file.

Please correct me, if I'm wrong here

Thanks,
Madhu


