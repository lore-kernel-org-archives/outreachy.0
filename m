X-GM-THRID: 6800460618478387200
X-Received: by 2002:aed:2169:: with SMTP id 96mr2726013qtc.124.1583497301673;
        Fri, 06 Mar 2020 04:21:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:9f92:: with SMTP id i140ls277356qke.3.gmail; Fri, 06 Mar
 2020 04:21:40 -0800 (PST)
X-Received: by 2002:a37:e47:: with SMTP id 68mr2527694qko.17.1583497300614;
        Fri, 06 Mar 2020 04:21:40 -0800 (PST)
Received: by 2002:a05:620a:9c9:0:0:0:0 with SMTP id y9msqky;
        Thu, 5 Mar 2020 05:53:01 -0800 (PST)
X-Google-Smtp-Source: ADFU+vvMW9NX77HXBDaQtzJxne8dfrpEzMbCHG0IRv6/fx7uhIqZMak14bpivTE6eGOkb3W1OrGD
X-Received: by 2002:ab0:748e:: with SMTP id n14mr4473211uap.141.1583416381342;
        Thu, 05 Mar 2020 05:53:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583416381; cv=none;
        d=google.com; s=arc-20160816;
        b=beeRM3MPOUuZn9wOKOja5NJejj0bMBmgrQYJrAnQmIHJOm1x4qjGWrl6V+Y2rI+PaQ
         J6IUqK9YjYXRny8OU3ieU8XK0cjdKb/YWgUKCFMJe1QGsBwdrBNNESae4l/+NlwB/zBU
         RIs1mV7g8Pu5l6JKbasYbNoumeW9zZm8VD21Sc5rPaexfw0CRICcVc0Rc4V0NECXm9yq
         5F+hq4axYQLUc1/wCLyr19uq4wIIx7DfwZ32o0hYw7PCIi6weaf1hocEKblzUON0mi8D
         hst0aoaouAc+7b5xPVZToNZMv2NkmDW+4T9RAuBUQDe1wl+9HQzBkqtQhnwAu6IoJV7/
         w5FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:to
         :date:from:dkim-signature;
        bh=GIdoTFVoJROJsMPN5zM/8il4G8RBbis2Zm/JW+mJ6zs=;
        b=JzcsoaEPH/kAQ5FwE4b6F+CtWq6Q6b88KJTrkQEiWJmKRMivminh3hZRqy3Xdh/I3c
         XkCuEk/FUesrC3i40sr5kAsXOx5yy9fAE2DQzpOJ/q2RK4td6KDIA3b+kRCU1pPo7tjB
         FxbGBbdSn73XEOStlHOY9XOo/uwUt5FZrUDYuDmR1TIcjZK8b/CnTr9W6WHWdwE96njo
         dMgrnh87p2C1Zs47WqgiPpZ7hbfx9XDQU2Eq1YHOK2OjCMAmao5c1P25A3QQXiqyidPv
         rymJ8uqcv2ViPdWjDRYEVrhwI0kT0xYZCng9kaf7YdTnK4pkdgln4YzG46ujkMBJHSSK
         EweQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=wCjnwIDt;
       spf=neutral (google.com: 2607:f8b0:4864:20::534 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id w69si309256vkh.4.2020.03.05.05.52.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2020 05:52:59 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::534 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::534;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=wCjnwIDt;
       spf=neutral (google.com: 2607:f8b0:4864:20::534 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pg1-x534.google.com with SMTP id t3so2813724pgn.1
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2020 05:52:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=GIdoTFVoJROJsMPN5zM/8il4G8RBbis2Zm/JW+mJ6zs=;
        b=wCjnwIDt4yg5a2w6nC5vULAB9KhRAi4xSbTCpdNH0li4nih7MCzTuTE0rhmu53SzSC
         iy+qKcLzesGiNKKydybhaCzJ2bEStZTY6/2Qt3+jJsPmOubPQwhfflgydkYY2rel180B
         BYoqEn3cwQQmvC0liGWsypJ7PrumU8C1+iXt2195KtFGb4ZhGzg1/Ec2h9K4ATDuXsX4
         LY0HbXFqJ3NpvbX7ApczGJdHTWJzB9AfVCX9P+o9aqL//DButDx/Huy3G5QfGXCOn0Ns
         rRrEWNGQRnRBvxo1/ADYLo5ysErODFnpVG06W4coyYIPfUXhZhosEQe9aCuUTg+Zm/Nb
         RUWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=GIdoTFVoJROJsMPN5zM/8il4G8RBbis2Zm/JW+mJ6zs=;
        b=rJUzEji5MQm3XQjm8UiUJrGMMS9FjHtEFD2h9Hdfh+nIuUnglfRk4mkIfUekYGVhmr
         EdkZcNN8Q/Ewsx1zCJ5ckTCM+GW0rDfdjtTNFL3/mTKpDQXQnX59wwD9fjeeyRT9BCYy
         aW+90E414nj80SJfuY0cZ8WfpBMecDwjGLICZgZru8d2pq2uLrpowzIY9bvsX6YMOmWm
         q9cVAshiDj1TlTs2COVob6RSFwaRSDwLJJle+02Ve34AEOUAPR7FWOtdHXKsC/an8vd/
         iVVEb51WA3MpSCLDf63a4mMGavlqL6NL6aK8dBiyYf8HY2mR8+AXolPrppqUqopL8oh9
         v3Lw==
X-Gm-Message-State: ANhLgQ1V9bem6XY1Iduhjw92cmP7y1WfmZjWeaBqA+aUnQLMnaZfw7KK
	MCJRygynJekDrSAG4EcUlDUQU5tJmj0bAA==
X-Received: by 2002:a63:5f92:: with SMTP id t140mr8066498pgb.109.1583416379266;
        Thu, 05 Mar 2020 05:52:59 -0800 (PST)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.171])
        by smtp.gmail.com with ESMTPSA id g11sm3920656pfo.184.2020.03.05.05.52.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 05 Mar 2020 05:52:58 -0800 (PST)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Thu, 5 Mar 2020 19:22:52 +0530
To: Helen Koike <helen@koikeco.de>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Outreachy contribution period - Welcome!
Message-ID: <20200305135252.GA13838@kaaira-HP-Pavilion-Notebook>
References: <CAPW4XYZ43RN5nSpi8StEGy0ceR53GXfse37n1rto_BevX5mxJQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAPW4XYZ43RN5nSpi8StEGy0ceR53GXfse37n1rto_BevX5mxJQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 04, 2020 at 06:00:07PM -0300, Helen Koike wrote:
> Greetings potential Linux kernel Outreachy interns!
> 
> Please read this *entire* email, even if you have applied in the past.
> 
> What is Outreachy?
> 
> -------------------------
> 
> The next application round for Outreachy internships starts today, March 5
> and ends April 7, 2020.  Outreachy interns are paid $5,500 to work on a
> full-time internship with an open-source mentor from May 2020 to August
> 2020. Interns are also granted a $500 travel stipend to go to any
> conference approved by their mentor that relates to their project.
> 
> Who can apply?
> 
> ---------------------
> 
> You should have successfully completed the initial application process to
> determine whether you meet the eligibility criteria given below and be able
> to participate in the application period:
> 
> https://www.outreachy.org/docs/applicant/#initial-application.
> 
> The initial application period for the May 2020 to August 2020 round is
> closed. If your initial application is not approved, you are not eligible
> to apply for Outreachy.
> 
> What Outreachy projects can you apply to?
> 
> ---------------------------------------------------------
> 
> There will be several different open source projects participating in this
> round of Outreachy. The full list can be found here:
> 
> https://www.outreachy.org/communities/cfp/
> 
> The Linux kernel expects to offer five projects, which are already listed
> on the Linux kernel community page on Outreachy website:
> 
> https://www.outreachy.org/apply/project-selection/#linux-kernel
> 
> 
> How do I apply to the Linux kernel project via Outreachy's website?
> 
> ------------------------------------------------------------------------------------------------
> 
> 1. Successfully complete the initial application [Deadline passed]
> 
> 
> 
> 2. Work on Linux kernel tutorial
> 
> 
> 
> Basically, applicants will need to walk through our tutorial for creating
> their first Linux kernel patch:
> 
> http://kernelnewbies.org/Outreachyfirstpatch
> 
> 
> 
> It is not necessary to contact a mentor before starting the tutorial. Feel
> free to ask your questions in this mailing lists.
> 
> 
> 
> 3. Work on cleanup patches
> 
> 
> 
> As specified in our tutorial we require Outreachy applicants to first get
> accepted at least 10 Staging driver cleanup patches.

Sir/ Ma'am,
I wanted to confirm if the clean-up patches I sent in the past days 
(not aent on this mailing list) will be considered in the 10 clean-up
patches or should I send another 10?

Thanks!

> 
> 
> 
> 4. Once your first patch is accepted, add that as a contribution for the
> project(s)you're interested in applying for. This will then allow you to
> submit an application. Note that you'll need to apply for each project
> separately.
> 
> 
> 
> 5. Once applicants have completed working on 10 cleanup patches, we
> encourage applicants to move on to complete some small tasks outlined by
> the mentors. It’s preferable to CC the mentor when you are  working on the
> task so that they don’t miss it. Small tasks for the projects can be found
> in the project detail here:
> 
> 
> 
>    https://www.outreachy.org/apply/project-selection/#linux-kernel
> 
> 
> 
> Note that you'll be able to see the detailed information about projects on
> Outreachy's website only if you have been informed by Outreachy organizers
> that you’re eligible to take part in the program. Outreachy coordinators
> and mentors do not have any role to play in the initial application
> process. So, please email Outreachy organizers if you have any doubt
> related to eligibility or the initial application process.
> 
> 
> 
> 6. Keep editing your 'project contribution' on Outreachy's website based on
> your accepted patches links and project-specific completion of tasks
> 
> 
> 
> 7. Make sure to add your project preferences under the question
> 'Community-specific
> Questions' in the application.
> 
> Applicants should also join the #outreachy IRC channel on irc.gnome.org,
> and the #kernel-outreachy channel on irc.oftc.net.  If you're having
> trouble with IRC, please ask for help on this mailing list.
> 
> If you’ve applied in the Outreachy before, you’re still required to send
> few staging driver cleanup patches to re-familiarize yourself with the
> process before you start to work on tasks.
> 
> There is a tips section at the end of the tutorial to outline what
> behaviors we look for in potential Outreachy interns. I hope this will give
> more insight into our selection process.
> 
> All the best!
> 
>  ---
> 
> Helen Koike and Vaishali Thakkar
> 
> Outreachy Linux Kernel Co-coordinator
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAPW4XYZ43RN5nSpi8StEGy0ceR53GXfse37n1rto_BevX5mxJQ%40mail.gmail.com.

