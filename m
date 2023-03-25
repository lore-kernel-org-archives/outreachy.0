Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4D920EE
	for <outreachy@lists.linux.dev>; Sat, 25 Mar 2023 09:47:33 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id i9so3984189wrp.3
        for <outreachy@lists.linux.dev>; Sat, 25 Mar 2023 02:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679737652;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PwiCL9QONnS/YaXgobfUfJBdvKub8srt8FVkgOT+P5M=;
        b=DO4uekY4dXSFwUrKuHP4zUEhQjRAObhuEEqhLBletNzxhHtD0q0yuYMWw5Z2uoIh51
         P256V4d57xbKtAOF4+hg6Ks4dPEEQv2G5FRVYGXnOwr69o8GJEvBK4jnksG5LNwRF2vl
         RJgZOAUSzuG1oGe33uk8vzglNL78LzL78PCPYY1ZEMIfecHZwWpvuaiuzLssZXIMEXg1
         gLbObb97uYhnt/riRb1P6qjVwX/omZNqRoOE2ag4J6MBmez3rfrAfCbH+Rr51LOXONB2
         fvxa6nlFSAHOkifzggUwUsQDQTw0r2ikVK0zFU9CcHVbhTdh8SCmWRNJMPPK9abjR9NC
         1n/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679737652;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PwiCL9QONnS/YaXgobfUfJBdvKub8srt8FVkgOT+P5M=;
        b=mlcdcwmcg+FWpJBoeQSavLadwpM5Nv1fqVxXmxjugb7wn/wyBFzuTFVW/L36bIex1g
         CQ986x63+kdai6272FT1pGxDAFVyymwB7VYacJkL6lePTY6d2PcQ9jTW4TbAbJMApiQr
         HwqQu7lavcYnIj1O9uemSS42qy6LkiHLZo9TuFDC33oYXaeo+mV+BUbwUYCdwacCjmAQ
         3aUD59JYdhyhD37cIDSCc/OcL4DSML8Yc2yyE3urGkCvoQhYiOv3TzsSsPzB579vfthj
         1NXoIVTZ7JfxHIF8W2wheGwZu3Y95M07ysgGB1/AGwec3XuQLGIALdMT0j3enHJOmsGj
         3tFA==
X-Gm-Message-State: AAQBX9cIr4hLB3TLvKXwPkxHpO3WCuwsE+wrCgPP8DQc/o8daycTJYOF
	6USH/ytXXDqGE1HIBgAUIsRHuDObmJOMQw==
X-Google-Smtp-Source: AKy350adNd02/OnMr5B+IFS3LL39XnGVp6uLrxUoOmb81fbMrE0LhnVfrQsCJ5Cvu+o2g3gW/tqRNg==
X-Received: by 2002:a5d:4dcd:0:b0:2bf:f735:1310 with SMTP id f13-20020a5d4dcd000000b002bff7351310mr4705723wru.2.1679737651675;
        Sat, 25 Mar 2023 02:47:31 -0700 (PDT)
Received: from khadija-virtual-machine ([39.41.14.14])
        by smtp.gmail.com with ESMTPSA id e15-20020a5d65cf000000b002de9a0b0a20sm750910wrw.113.2023.03.25.02.47.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Mar 2023 02:47:31 -0700 (PDT)
Date: Sat, 25 Mar 2023 14:47:29 +0500
From: Khadija Kamran <kamrankhadijadj@gmail.com>
To: Paul Moore <paul@paul-moore.com>
Cc: outreachy@lists.linux.dev
Subject: Re: CHECK: Macro argument reuse
Message-ID: <ZB7DMa9zTOGfyI7B@khadija-virtual-machine>
References: <ZBy95LDjVu8e0uNi@khadija-virtual-machine>
 <CAHC9VhT714u7e5-E6zyWDX-b6jvJbpDefAZQ_bq4-RQ8aLa=KA@mail.gmail.com>
 <ZB1o1yCg6voDWDEE@khadija-virtual-machine>
 <CAHC9VhQ+tRobVuOn6Pa+N0JLwOX2TAM=zV8MvRcv==sfBcqixA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHC9VhQ+tRobVuOn6Pa+N0JLwOX2TAM=zV8MvRcv==sfBcqixA@mail.gmail.com>

On Fri, Mar 24, 2023 at 09:23:05AM -0400, Paul Moore wrote:
> On Fri, Mar 24, 2023 at 5:09 AM Khadija Kamran
> <kamrankhadijadj@gmail.com> wrote:
> > On Thu, Mar 23, 2023 at 05:45:53PM -0400, Paul Moore wrote:
> > > On Thu, Mar 23, 2023 at 5:00 PM Khadija Kamran
> > > <kamrankhadijadj@gmail.com> wrote:
> 
> ...
> 
> > > However, line length isn't what likely caused you to start working on
> > > this macro; the "Macro reuse" warning from scripts/checkpatch.pl was
> > > the problem.  Looking at the original macro code, I didn't see
> > > anything obviously wrong so I took a look at the checkpatch.pl tool
> > > itself to see what it was looking for that caused this warning/check
> > > notice.  Searching for the "Macro argument reuse" string I saw the
> > > following code snippet:
> > >
> > > >>>
> > >   my $use_cnt = () = $tmp_stmt =~ /\b$arg\b/g;
> > >   if ($use_cnt > 1) {
> > >   CHK("MACRO_ARG_REUSE",
> > >       "Macro argument reuse '$arg' - possible side-effects?\n" . "$herectx");
> > >   }
> > > >>>
> > >
> > > ... which basically means that anytime a macro parameter is used
> > > multiple times in the macro it will cause checkpatch.pl to emit this
> > > notice.  As long as we carefully review the macro to ensure it is
> > > correct, we can ignore this checkpatch.pl warning.
> >
> > Paul,
> > How can I ensure it is correct? Won't it still cause a problem if we use
> > any argument with side-effect.
> 
> Julia provided a more thorough explanation, if you haven't read her
> email in this thread, please do.  My advice above was to review the
> macro carefully, and careful review includes examining where and how
> the macro is used, as that can have a significant impact.  If you are
> ever in doubt, do the macro substitution manually and I believe you
> will find the problems much easier to identify.
>

Hey Paul,

Okay, I understand.
Thank you.

> > > While looking at the expanded macro, I think you'll also find that the
> > > for-loop's initializer block is not handled properly; it's not as
> > > serious a bug in that it likely won't be flagged by checkpatch.pl or
> > > the compiler, but it might result in bad behaviors when running and
> > > will likely be difficult to debug!
> > >
> >
> > I am sorry, just wanted to confirm, are you talking about this:
> >
> > > >                 for (; (dir_) <= SND_SOC_DAPM_DIR_OUT; \
> > > >                         (dir_)++) \
> 
> Yes, that's correct.  The original macro would have set 'dir_' to
> 'SND_SOC_DAPM_DIR_IN' at the start of the for-loop.
> 

Okay understood.

> > > I hope this was helpful, but if you have any questions about what I've
> > > written above don't hesitate to ask.  Good luck!
> > >
> >
> > Thank you for taking your time out to write a detailed explanation.
> > This is great help. :)
> 
> I'm happy to hear that.  I think all of us here are able to do what we
> do because people took the time to explain things so we could
> understand; please remember that when you are an experienced developer
> and someone asks you for help ;)
>

I will always keep it in mind. :")

Thank you Paul :)

Regards,
Khadija

> Good luck!
> 
> -- 
> paul-moore.com
