X-GM-THRID: 6805867897863274496
X-Received: by 2002:aa7:dc13:: with SMTP id b19mr2614804edu.2.1584621884166;
        Thu, 19 Mar 2020 05:44:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:99d5:: with SMTP id n21ls1118223edb.10.gmail; Thu, 19
 Mar 2020 05:44:42 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuUbfUUtxS/ca4rOjXs2sDbhELpmzXFgsBjDeKRjTA2KOR4rBRZo+2lo5H72g1imMlgKCS/
X-Received: by 2002:a50:8d4b:: with SMTP id t11mr2668029edt.63.1584621882810;
        Thu, 19 Mar 2020 05:44:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584621882; cv=none;
        d=google.com; s=arc-20160816;
        b=TAAdH1c2+n8KdWUwzCOZjd+eVzL4h9r9qEZUw0bQFyENwpNw8mr2d/t1egKyVvCA1R
         A4phS4Qdm7iBIMfl1XLn8RJ+N6vTVsXyju4hkICF09Fqt8O13K5bgzGxbOiqAIRrCUmm
         BrafygAhspKB2BAI+P3ghkg5wC+/+C3i55SflEij2HjiRqZbzWsto+HDu8ER0SMjGoFb
         Fw+39/1LmHr8vvs6Hen31oabyveYUzHzhuwQOmAPnjteUZ165mt6c2YLeHNPiCiK7OPX
         yliSm8W6TNoSOXj/z88GqOSCBzkIggzAJ8SvSB01pgr+9EENxcmluPtvddbEJD7p8eOT
         A7oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Jktb/1RyHHP/sADxYzceKaMiw7pTo7iHfP0yO2GDpvo=;
        b=tcFiSEdV4vrgNXBpY9wyYc/JOsXq+VcFn7u80glzDMNI0+SA23VNRr/FE3bhaPtxEF
         +SWTkPw2fxqulmfkgBJzGPQkcVTT/kPp+k1pXopngVkRSTcom8/1OGEYKtiSShK8TypX
         AhGaX51m2FCILimXmsAO+xn9ICS/wrc6ldR31GDjhzWgSlaBFr6HfTGzSIah0WK47ieP
         fYh77eVchAa1TAI/YdO0fi3ipe7x2kI1pE2ibLLSM1pkfcDnaJ0XAf5q7LqbaC7IQU9r
         1DEZ9Xrz+1LdyKVAJ/rTtuKQJxlk8bPClGddh/kWQw9ZYPRv/45wpnZo/Iw0URLyu4ES
         Fgag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id d7si114567edo.5.2020.03.19.05.44.42
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 05:44:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 28568 invoked from network); 19 Mar 2020 12:44:40 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 12:44:40 -0000
Date: Thu, 19 Mar 2020 18:14:33 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 0/4] Correction of typos in
 comments
Message-ID: <20200319124432.GA4276@tulip.local>
References: <cover.1584517384.git.vkor@vkten.in>
 <20200319121407.GA3802220@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200319121407.GA3802220@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Mar 19, 2020 at 01:14:07PM +0100, Greg Kroah-Hartman wrote:
> On Thu, Mar 19, 2020 at 04:26:37PM +0530, R Veera Kumar wrote:
> > Correct typos in comments.
> > Misspellings found using checkpatch.pl
> > 
> > ---
> > R Veera Kumar (4):
> >   staging: rtl8723bs: os_dep: Correct typos in comments
> >   staging: rtl8723bs: os_dep: Correct typos in comments
> >   staging: rtl8723bs: os_dep: Correct typo in comment
> >   staging: rtl8723bs: os_dep: Correct typo in comment
> 
> You need unique subject lines, please.
> 

I do not know what to put.
Should I put the file names in subject. Someone told not to do so.
All the four patches correct one or two single letter misspellings
in one or two comments.

Can you give me a suggestion.

Veera

