X-GM-THRID: 6463164323927687168
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.25.78.19 with SMTP id c19mr158602lfb.8.1504864912219;
        Fri, 08 Sep 2017 03:01:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.25.67 with SMTP id 64ls126708lfz.41.gmail; Fri, 08 Sep 2017
 03:01:51 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAUO13U54/8HC2FK5nVIEBGj2stO4DmLONljzY12x8ZPeX9VcInZb3ITxQQW57BpRzYYPjA
X-Received: by 10.46.32.39 with SMTP id g39mr182631ljg.17.1504864911254;
        Fri, 08 Sep 2017 03:01:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504864911; cv=none;
        d=google.com; s=arc-20160816;
        b=fYlrVXhaQrkpmzSaDeW124y2E13qAjUHilEiQmJHXlrK6lBFVdV96eJ7l8tAQOUo79
         Et+vFvFx6oOyTkWgc3aTEIMyp9sNILMCh2W+AoIehwAzYfWUiBOLhQEHY+LSVupW0F15
         rEnDV60op0hpUMAGTeUMLWwdyoCXk2Xk8emVHqoeMgZr9MEvgcjA7YM9RE8Yf3kQ8DRJ
         bUCJwZoax5OwgF4JWG/k0fl3IRTmrqutuKAc017srJG1UKlc+w+nSOGhTSbrfKxHJFcx
         IzCO9DqlsPTMLo1McOa8JKStijsBoTtbj37FSCv5Bu4Yn3b2YcD0JjpvDltr0NdC7YUe
         aYDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:arc-authentication-results;
        bh=F3ifZx5JrmKlAQbQFhawb4iXIe5LLETI8JSgTyoOg1A=;
        b=FiGtRbL/m1my4UOEDNBNEBUdOxKMKSwiCVUYpu+e4tpHq0UbTa0NS5n/T0uVKHXmIj
         SsEjyxVRV+wRzD6LH2JOHCPNfq7McqQUURC+n20ujmvDppnNszxnWIwtHCoa1gRgTTbq
         87tdoGt81Vv38nvkSvFvr6OCA8yivpB+RkWHKdcHITDm+1DXHn4WSNIlBuuZZ38fnx4k
         Cc7swfprsZXo+X7vecbOtIeZA/3EAiPCMF4FiAYllvO2ppPU5n0xXuJe6BL5+xQIVGTe
         SIBY5WtcxydP5RqT9TgCOZdg4Ec5Dtbp8ztI0Sj5SoP21Ft5vvcAU4xrjRUgwCjlA+yj
         CUWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id l133si102313wmb.3.2017.09.08.03.01.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 03:01:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4F0BB900;
	Fri,  8 Sep 2017 10:01:49 +0000 (UTC)
Date: Fri, 8 Sep 2017 12:01:47 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Neetu Yadav <yadavneet7@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Not able to send mail to the mailing list
Message-ID: <20170908100147.GA24612@kroah.com>
References: <405d02a3-830c-4edf-94f8-26a22db5d71b@googlegroups.com>
 <CAOCi2DEA4wbfkpouWZsZ=3BGX_sju9um2mAd0XADn9t_mFZjJA@mail.gmail.com>
 <978eb67d-8c0f-4089-83d0-eb93a5a9bcdd@googlegroups.com>
 <20170908051133.GA22581@kroah.com>
 <96608ef0-4850-47f6-a6e1-e2fb5df3015c@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <96608ef0-4850-47f6-a6e1-e2fb5df3015c@googlegroups.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Fri, Sep 08, 2017 at 02:50:53AM -0700, Neetu Yadav wrote:
> Hello sir,
> 
> you said:
> 
> >Your emails to the list
> >are in html format, and the kernel mailing lists will block that type of
> >email, for obvious reasons.
> 
> Does that mean my mail was received by the list? I don't know how they end up
> in HTML format.
> But I followed your video tutorial on sending the first patch, and did this:
> 
> gitconfig :
> 
> [user]
> ��� name = Neetu Yadav
> ��� email = yadavneet7@gmail.com
> 
> and then I did this:
> 
> neetu@neetu-Lenovo-G50-70:~/git/kernels/staging$ git send-email --smtp-debug=1
> --to� f2015079@hyderabad.bits-pilani.ac.in 0001-Staging-rtl8192e-dot11d.
> c-fixed-a-coding-style-issue.patch
> 0001-Staging-rtl8192e-dot11d.c-fixed-a-coding-style-issue.patch
> (mbox) Adding cc: Neetu <yadavneet7@gmail.com> from line 'From: Neetu <
> yadavneet7@gmail.com>'
> (body) Adding cc: Neetu <yadavneet7@gmail.com> from line 'Signed-off-by: Neetu
> <yadavneet7@gmail.com>'
> 
> From: Neetu Yadav <yadavneet7@gmail.com>
> To: f2015079@hyderabad.bits-pilani.ac.in
> Cc: Neetu <yadavneet7@gmail.com>
> Subject: [PATCH 1/2] Staging: rtl8192e: dot11d.c: fixed a coding style issue
> Date: Fri,� 8 Sep 2017 14:38:30 +0530
> Message-Id: <1504861710-16081-1-git-send-email-yadavneet7@gmail.com>
> X-Mailer: git-send-email 2.7.4
> 
> ��� The Cc list above has been expanded by additional
> ��� addresses found in the patch commit message. By default
> ��� send-email prompts before sending whenever this occurs.
> ��� This behavior is controlled by the sendemail.confirm
> ��� configuration setting.
> 
> ��� For additional information, run 'git send-email --help'.
> ��� To retain the current behavior, but squelch this message,
> ��� run 'git config --global sendemail.confirm auto'.
> 
> Send this email? ([y]es|[n]o|[q]uit|[a]ll): y
> OK. Log says:
> Sendmail: /usr/sbin/sendmail -i f2015079@hyderabad.bits-pilani.ac.in
> yadavneet7@gmail.com
> From: Neetu Yadav <yadavneet7@gmail.com>
> To: f2015079@hyderabad.bits-pilani.ac.in
> Cc: Neetu <yadavneet7@gmail.com>
> Subject: [PATCH 1/2] Staging: rtl8192e: dot11d.c: fixed a coding style issue
> Date: Fri,� 8 Sep 2017 14:38:30 +0530
> Message-Id: <1504861710-16081-1-git-send-email-yadavneet7@gmail.com>
> X-Mailer: git-send-email 2.7.4
> 
> Result: OK
> 
> It looked like the mail was sent , but when I checked the inbox, it wasn't
> there.
> Also , I have enabled "access for less secure apps" in Gmail. I have enabled
> IMAP as well.
> Is there anything else I need to do?
> Please help me.

gmail almost never shows you a message that you sent yourself, through
its servers, which is why this is probably not showing up.  Try sending
it to some other email address you "know" is ok to use for testing, or
just try it for real if you think it is now working.

Also, you are still sending email in html format, please change that in
your email client settings on gmail.  All of the linux kernel developer
mailing lists will reject such mail automatically.

good luck!

greg kh-

