X-GM-THRID: 6667559870599790592
X-Received: by 2002:a05:6830:20cf:: with SMTP id z15mr21888046otq.3.1552412606577;
        Tue, 12 Mar 2019 10:43:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:b446:: with SMTP id d67ls837205oif.3.gmail; Tue, 12 Mar
 2019 10:43:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxjnGpbo61IWAQ+xtPaTjkbOWrp7fQTehiVZSI/8V6jWZ+z8bAsHEISdy5pRyjb4/Y0MqR6
X-Received: by 2002:aca:4d6:: with SMTP id 205mr2921645oie.26.1552412605859;
        Tue, 12 Mar 2019 10:43:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552412605; cv=none;
        d=google.com; s=arc-20160816;
        b=ScYJtPUJYM86QtZcyDEq3uucA0Fu9Z0rXRbQMi6xOm4NZmyImFXGu9gxDSTs8pKSPZ
         1UCphDHI+3DX20WRDukDhul9+1UzkHldSF0U5ywIifieuWl1xNXyvI/AjUpsZtKg//87
         xmI5444ma4/zw8PwYW/1Iu8rE8iPsYjTdZNt3AfFt2sswz6RoZL9bGMW3+pfMUP4LIHW
         3zKgUsg2DhqHnCJ7d8a9cnkXdrY1UBYw+CXm6pgFJWElCHgRsk92YtdFTVnpXWBfyRYZ
         v/m4CK6o0QCbMXony0xeSRpYAoDLQdh81zwfL1YcZLhH5k9zaJHPg4Ko7C5RqdtBnA8D
         0fxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=cNiidaoyCKTNbz4eRjfDa/fA8e/CaOlSC1G+C1tJvKE=;
        b=oLCzSosR14Nat/SJG2Jhw6IYwXlDGsQB7qLR8NgG8G/hayiNYH8xzy8FqdTI8m1pw+
         eRDCH55JbM/zFNBBuUpO3KoQNUFxPSk4Z53U8SSgqNA2nPDnoKHQjMDZcOx3oI/oppF3
         CQ9hzwKV6VL4COUjXpaNh/pCwKeYya/GUNQCwPgG18YiANZc/T0fr7kYx7A8zlYpyhOB
         zk/og6dO7WsAEHsh/YRfV6ioZy6j+cE2hkSfNXIfby20t0jXW9o2b/fSBgMpvDIwS5J6
         qRbBPUup8tA3wseVYVzEvOFd+WmHbWcTCNLV5PQuC/U5W/q6qRY9MDiaHfe69l0BdJod
         1ySw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lMnQL8Tt;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id a188si649543oih.4.2019.03.12.10.43.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 10:43:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lMnQL8Tt;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id j10so2770234oij.13
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Mar 2019 10:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=cNiidaoyCKTNbz4eRjfDa/fA8e/CaOlSC1G+C1tJvKE=;
        b=lMnQL8TtSon2Ifbh1tthMpHKKwNhXf4nDsD5+41VF2RMpwF2wr9kudQBVGEGP+Gmlq
         FkpifC2oL6rRH1A4fKBGK7Ny7TqwFtAos66afIe05oGcPDdMYLpdFTaSrVMuNmt/5B5o
         PgtNOj0KXCkYG1H/pf9LairsjMe6/R254ewhBhh5xwkJr/Oc/NhVSEWeN2kPrTpMHfG9
         COfr7KWhOdeXyCAdZx4Ivt8NrFvZUqaBAI5JiePmhayWitTfpCDwNOK0kU7j97zK67JH
         WQ7zzyWNW4DUnbHdU4KuiRfKKGToPtHxIrM5WOC3vmAq1KvvZADBQ77lhWDrkerCa3Hr
         lnzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=cNiidaoyCKTNbz4eRjfDa/fA8e/CaOlSC1G+C1tJvKE=;
        b=sd3M/HJzn0IPGMtrq+FOOMRJilFcgg9jyqVnG1PlWIaxPGBB7jW89t8wRUmIyZcITH
         fTUHHOgt5soOxwfuJeMo28QCmUk0iy8YATg77240OOi1lRGXgjReuzSYIRPuCPfB8Vc0
         kNrrwuw66NJIXJ5VdexDaYxlfyoPp0fkFtHmIEqB175IWwx/I4XzIKaVAClgZSgUQY6r
         boe+th0YT4OZLD/ZVrXGPGPsQaOOQ0uSFbFO8OuscSKIdv9oVtexxjobn6+UNpfSlhny
         9zapnu5193UbndPDARxIw8UuViPYlYyiWS68lEguz501N+eyGui++52OPQO4e0g5WAHt
         uihQ==
X-Gm-Message-State: APjAAAX8kr+w4LIk4XIAqzciBJMO0r18UP8TQqFyD7bkocvyTNOuXpza
	bIl7aeqvh3fV4Ms2o2n3IiY=
X-Received: by 2002:aca:38d5:: with SMTP id f204mr2516416oia.72.1552412605404;
        Tue, 12 Mar 2019 10:43:25 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:9838:e357:690:7f06])
        by smtp.gmail.com with ESMTPSA id f15sm3635529otq.65.2019.03.12.10.43.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 12 Mar 2019 10:43:24 -0700 (PDT)
Date: Tue, 12 Mar 2019 12:43:22 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: speakup: Remove an
 unnecessary initialization in function
Message-ID: <20190312174321.GA23361@madhuleo>
References: <20190312173730.23281-1-madhumithabiw@gmail.com>
 <20190312173911.dttfxifz42x2weaw@function>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190312173911.dttfxifz42x2weaw@function>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 12, 2019 at 06:39:11PM +0100, Samuel Thibault wrote:
> Madhumitha Prabakaran, le mar. 12 mars 2019 12:37:30 -0500, a ecrit:
> > Remove an unnecessary initialization of local variable dt_stat in function.
> > Issue suggested by Coccinelle using ret.cocci.
> 
> dt_stat is a global variable, so this is not the same, with your change
> it wouldn't get written to.
> 
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
> >  }
> >  
> >  static void dt_sendcmd(u_int cmd)
> > -- 
> > 2.17.1
> > 
> 
> -- 
> Samuel
>     if (argc > 1 && strcmp(argv[1], "-advice") == 0) {
> 	printf("Don't Panic!\n");
> 	exit(42);
>     }
> 	-- Arnold Robbins in the LJ of February '95, describing RCS
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190312173911.dttfxifz42x2weaw%40function.
> For more options, visit https://groups.google.com/d/optout.

Yeah. I will drop this patch.

Thanks.


