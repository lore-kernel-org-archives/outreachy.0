Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A0B259D
	for <outreachy@lists.linux.dev>; Thu,  9 Mar 2023 08:10:28 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id cp7-20020a17090afb8700b0023756229427so5255300pjb.1
        for <outreachy@lists.linux.dev>; Thu, 09 Mar 2023 00:10:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678349428;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+Xpe7ByeZBwY/zMtLpmIAUKc0tzjuVuavjNhe0LfNvw=;
        b=YbQ54fQ1UVCkrSK+H9cdNPW1lkeB67P2eEvZ7v+ExrfXKbxSboh6XJeUIuFsdXfvsU
         +AvKcxRzQTZ2d4cXO/dz5Lr9P9uug8iR2q1t1O0BTsOfRlpsyRmFj2a0xlMJDKz04ZYo
         j3eg+jmq+xxYrlA2HOVtKo8H9q05zueuPgQ5QdHtHGhFzC2F6IYEPuOzDhVKBERi1EKo
         XPsDQhbvvHqdTQWYye/6pC6fbo978gII55Qghys9Lt0RTF1CFnIma7fT0ApgRfzs9vxX
         PkiVbbBpW1G2B+xIuGPdWBmDqkXEzBwYmFo5J0SLyb5RGLee4lds/XHQo6JF7xwdz37P
         EBsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678349428;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+Xpe7ByeZBwY/zMtLpmIAUKc0tzjuVuavjNhe0LfNvw=;
        b=3wNyt214eOAyhSzFwBPP6Xsd/Yz85QrFzELJbWQsL1zMdD1CTlLX50yuq20sBryv7V
         3yxcX4e+DaTxuv37u3fXQRi779tMdsV1BFZUDb2Uhj+5LzhPMcQ6eRCC7XOEJsA4lZDg
         PQn9+NNyqT0YG0TDyMUKYRQ4YGa6RbHGwHfSGDd8PQ+3HtCaGDMM2vFwF1qqhSTttfqs
         rneUN1m37GMTY8SRwI7fcT5bzkVOKERKdp6XXyPUlv0jqp/DSgM1bWJNGMnNM7+2sHFr
         qCrADp1rRORjZUCsI8WUlym+VFRlUZQw3jFNOjnj6hIGqte+ZgXNf5uY0wata9ZKxP7A
         6qqg==
X-Gm-Message-State: AO0yUKUXWHxF5NeOf9Zjp0Zm9JkjyuXvAwYKLwlf46ynluKBaDzMcgE5
	a3/qEqzmKJPLTziYy6jCt7atlbF14CYsj39n
X-Google-Smtp-Source: AK7set/GyVSbQ/awS3M4YE3dvZVBzJMOxWSBLx2Reb4HZRDWuoL8PjNCBQOhNU7egL9x0gE0ZgSHYQ==
X-Received: by 2002:a17:90a:1a48:b0:234:35bb:6190 with SMTP id 8-20020a17090a1a4800b0023435bb6190mr21665217pjl.27.1678349428329;
        Thu, 09 Mar 2023 00:10:28 -0800 (PST)
Received: from CloudiRingWorld ([122.231.69.163])
        by smtp.gmail.com with ESMTPSA id k6-20020a17090ac50600b00233d6547000sm1005197pjt.54.2023.03.09.00.10.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 00:10:27 -0800 (PST)
Date: Thu, 9 Mar 2023 16:10:25 +0800
From: Kloudifold <cloudifold.3125@gmail.com>
To: alison.schofield@intel.com
Cc: outreachy@lists.linux.dev
Subject: Questions on legal name/pseudyonym
Message-ID: <ZAmUcfHfMUqxu67D@CloudiRingWorld>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Thanks for your advice in thread "Problem in 'Pick a warning, and try to fix it'", I should use "drivers/staging/**/*.*" instead of "drivers/staging/*/*".

My legal name may change in the next few years, and the Outreachy Community Member Information page said
"You may use a pseudonym or abbreviate your given or family names if you have concerns about privacy.",
so I use "Kloudifold" as my Outreachy name and intend to use it as signed-off name when making kernel contributions.

I would now like to ask if my contribution will be considered by Outreachy if I use a pseudonym?
If not, I will use my legal name instead.
If it is OK, I intend to keep contributing under the name "Kloudifold".

On Thu, 9 Mar 2023 at 08:12, Alison Schofield <alison.schofield@intel.com> wrote:
>
> On Thu, Mar 09, 2023 at 04:18:03AM +0800, Kloudifold wrote:
> > Dear Outreachy team,
> >
> > I am an Outreachy applicant who recently followed the tutorial for the Kernel Firstpatch on your website. During the process, I encountered a couple of issues that I believe could benefit from an update to the tutorial.
>
> Hi Kloudifold,
>
> These sound like very helpful additions!
>
> I was about to add you to the Editors list for the wiki, but want
> to check on the name. Have you looked at this yet:
> https://www.kernel.org/doc/html/latest/process/submitting-patches.html?highlight=signed%20off#sign-your-work-the-developer-s-certificate-of-origin
>
> My question is if you go by 'Kloudifold' as your full legal name.
> ie. will your SOB be:
> Signed-off-by: Kloudifold <cloudifold.3125@gmail.com>
>
> Whatever you put as your name there, will be how your work is
> discovered in the kernel from here forward. So, let's be sure
> to get the name correct.
>
> And, I want to use that same name in the Editors file of the wiki.
>
> Let me know & thanks!
> Alison
>
>
> >
> > Firstly, the tutorial assumes that the .config file used to compile the distribution kernel is stored in the /boot/ directory. However, some distributions, including the one I use, do not follow this convention. Instead, the .config file is stored in the /proc/ directory as a compressed file. To address this issue, I propose updating the tutorial with the command "zcat /proc/config.gz > .config" to extract the .config file from /proc/ and use it for compiling the kernel.
> >
> > Secondly, the tutorial instructs users to install the kernel using LILO as the boot manager. However, many modern distributions, including the one I use, use GRUB as the default boot manager. This results in an error when executing "sudo make modules_install install" as the system cannot find LILO. To resolve this issue, I suggest adding instructions for manually installing the kernel and initramfs and configure GRUB.
> >
> > In summary, my proposed updates to the Kernel Firstpatch tutorial include:
> >
> >     Adding a command to extract the .config file from /proc/ using "zcat /proc/config.gz > .config"
> >     Updating the instructions for installing the kernel and initramfs manually and configuring GRUB
> >
> > I believe that these updates will improve the usability of the tutorial for users who encounter similar issues. Thank you for your consideration, and please let me know if you have any questions or concerns.
> >
> > Best regards,
> > Kloudifold.
> >
> >
