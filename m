X-GM-THRID: 6619842705607360512
X-Received: by 2002:aca:5101:: with SMTP id f1-v6mr9189972oib.23.1541399750625;
        Sun, 04 Nov 2018 22:35:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3f06:: with SMTP id m6ls4162780otc.7.gmail; Sun, 04 Nov
 2018 22:35:49 -0800 (PST)
X-Google-Smtp-Source: AJdET5fw6XewcyeutQNftAzs/E6WpYL8bd/QIlIcwZE2ssNvvZGwRHmLCTLgC31e+KVv/3jYb2Cl
X-Received: by 2002:a9d:3d21:: with SMTP id a30mr15875508otc.26.1541399749430;
        Sun, 04 Nov 2018 22:35:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541399749; cv=none;
        d=google.com; s=arc-20160816;
        b=T3QLzXuBpq5BZNtgtWmqgmHvuEK42GLJ/jEfI9aRTmecky0xl6QzekZJJj+hU7ffEY
         8DjCCnsOVHcUSAi4HATWRR4SsmDsp13ILnabCRzYsWppQF8wQMr+11vgOJv+VnBdTjJK
         asj3il1wHbO/wYt/iuxhagXOYBpl9q1He19TjL0zCmBK1l5h/cLUOBaF2kcnD3so1wn7
         iefBLZxzNpb9fEn7silv0+XRw9qQQRfR1eZ3wlgA4VM57vsuMIVgJNNJ+fVbQt2AbTIo
         AzBBhUQe/AfrgqA1wyCirH0J7rIO0IJLVZbmpbdVcUb96dAIos7j/9FQGlPEXYi4K7+a
         h85w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=ju5dqHelmgtPNGD3ZntPoAcc+PRMNqsgSk7J/Yuz2YY=;
        b=BQ3wx9ZoH5nCm86t+jseFDcQxnIXdVEfp9PWH0USap0DLuD7EOSJZLa4jri8MQZHjM
         rhp1AxqiiBwtrAChAvN/55oXDsJsCcvOxGs5rxe4AP0JPcD1xsRi76FYe72w8IvGcMcI
         0nTT1xOKdN5+qJi92DmyLV9Yuaynets/b+9OYssy4c3YuN+ElGr4KzRqZOmu0aDq49Ge
         xdfGJsxnevZt6+cQQf0xaooihCmLxzIUUHHe8Z+Z5pq5VYvjMVcYJQe7ncub3yWUWiva
         L/7TE1keq+CKkWXnrIJndhupr4AEGwIKKccsJBBhPHz1lLswfjz81FNbE2G7l8TweuG6
         xigg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.238 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa09-09.prod.phx3.secureserver.net (p3plsmtpa09-09.prod.phx3.secureserver.net. [173.201.193.238])
        by gmr-mx.google.com with ESMTPS id g9si52629otk.0.2018.11.04.22.35.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 22:35:49 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.238 as permitted sender) client-ip=173.201.193.238;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.238 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-wr1-f50.google.com ([209.85.221.50])
	by :SMTPAUTH: with ESMTPSA
	id JYUFgdKMYqFgMJYUGgoDaV; Sun, 04 Nov 2018 23:35:48 -0700
Received: by mail-wr1-f50.google.com with SMTP id z13-v6so5728247wrs.3
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Nov 2018 22:35:48 -0800 (PST)
X-Gm-Message-State: AGRZ1gKZO0fGnMVPzlX768DbiOCiWcNQbPv/sR9mQ7ybWqZ/hqy9h9Ql
	ZmswZMb/sORJdLqdsQms9pO2OhoZLWJb3Fl1Wjw=
X-Received: by 2002:a05:6000:110b:: with SMTP id z11mr17581518wrw.136.1541399747339;
 Sun, 04 Nov 2018 22:35:47 -0800 (PST)
MIME-Version: 1.0
References: <CAK-LDbJoMEKgjyyion0O6RWn3p4j04mwupEwY7CK1wZqJWkd3g@mail.gmail.com>
 <20181105055411.GA2334@k-vBox>
In-Reply-To: <20181105055411.GA2334@k-vBox>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Mon, 5 Nov 2018 12:05:33 +0530
X-Gmail-Original-Message-ID: <CAK-LDbJx-ChyexGjOBhkqBicagxznh+uNoG3K2QFZnCLmGN+JQ@mail.gmail.com>
Message-ID: <CAK-LDbJx-ChyexGjOBhkqBicagxznh+uNoG3K2QFZnCLmGN+JQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [Announcement] Outreachy application reminder
To: "M. Nakamura" <m.maya.nakamura@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfJ3rrm+FzAe76nQZnSmxCfb9+t7wanQZR08LRlAaNa80HxaPx64MyVip/nXtV7QFoGEKUY3RvWrW074BXB5nMOcM4uZQhC8TKLvT5KCOYrhKum3GCIR3
 GaVb2COpckJZ1T0ROk+inHB2B0iB2svNhh7Crwj44/2kBQWCUJwqnVd8FF2dOLW/ZfjSA3N5QUalWwam+AeSBzc0Zs21N2iQvl8=

On Mon, Nov 5, 2018 at 11:24 AM Maya Nakamura <m.maya.nakamura@gmail.com> wrote:
>
> On Sun, Nov 04, 2018 at 09:00:13AM +0530, Vaishali Thakkar wrote:
> > Hi All,
> >
> > As you know, Outreachy deadline for Linux kernel projects is November
> > 6, 2018. So, don't forget to submit your application before deadline.
> > Here, are bunch of points you need to take care of:
> >
> > - Record your contributions on Outreachy's website. Remember that for
> > each project you want to apply for, you will need to record separate
> > contributions and fill separate application. Make sure that you put
> > links to patches when you record the contributions. If you have
> > written any blog post etc related to your Linux kernel experience,
> > feel free to put links as well.
> >
> > - We normally advise each applicant to apply for at least 2 projects.
> > Make sure to add your project preferences under the question
> > 'Community-specific Questions' in the application.
> >
> > All the best and we're looking forward to reviewing your applications.
> > Feel free to ask questions, if any.
>
> Hi Vaishali,
>
> Thank you for the application reminder!
>
> For the final application, there is an optional Community-specific
> Question section, and you instructed us to add our project preferences.
> I am confused because the final application is for a specific project.
> Am I right that I should rank the projects that I am applying for to
> answer the question?

Yes, you need to submit a separate application for each project.
What you can do is under the question I mentioned above,
you can just say that this is your 1st preferred project and in
the other project you can write that it is your 2nd preferred
project so that we know which project you're most interested in.

> Maya
>
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAK-LDbJoMEKgjyyion0O6RWn3p4j04mwupEwY7CK1wZqJWkd3g%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181105055411.GA2334%40k-vBox.
> For more options, visit https://groups.google.com/d/optout.

