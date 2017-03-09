X-GM-THRID: 6393919120067264512
X-Received: by 10.99.163.92 with SMTP id v28mr6556534pgn.147.1489080774437;
        Thu, 09 Mar 2017 09:32:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.83 with SMTP id t19ls619291ott.28.gmail; Thu, 09 Mar
 2017 09:32:54 -0800 (PST)
X-Received: by 10.200.45.211 with SMTP id q19mr2727298qta.60.1489080773967;
        Thu, 09 Mar 2017 09:32:53 -0800 (PST)
Return-Path: <corbet@lwn.net>
Received: from ms.lwn.net (ms.lwn.net. [45.79.88.28])
        by gmr-mx.google.com with ESMTPS id y203si958454pfb.0.2017.03.09.09.32.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 09:32:53 -0800 (PST)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) client-ip=45.79.88.28;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from localhost.localdomain (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 90FE62DF;
	Thu,  9 Mar 2017 17:32:52 +0000 (UTC)
Date: Thu, 9 Mar 2017 10:32:46 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: Queries regarding Documentation tasks
Message-ID: <20170309103246.7f69a63f@lwn.net>
In-Reply-To: <CAOCi2DHW=2drc7KGQ+9o0utfidZ5OEcDkcAW7tihts1oOY6uoQ@mail.gmail.com>
References: <CAOCi2DHW=2drc7KGQ+9o0utfidZ5OEcDkcAW7tihts1oOY6uoQ@mail.gmail.com>
Organization: LWN.net
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit

On Sun, 5 Mar 2017 13:21:13 +0530
Gargi Sharma <gs051095@gmail.com> wrote:

> If one wants to update the documentation, what documentation branch is one
> supposed to clone. Additionally, is there any Getting-Started for sending
> patches for the documentation tree?

My apologies, I'm traveling this week, and this fell through the cracks.
Hopefully it's not too late...

The documentation tree can be found in the MAINTAINERS file:

	T:	git git://git.lwn.net/linux.git docs-next

I'll attach a thing I wrote up about contributing to the docs; gee, maybe
I should stick it in the documentation directory somewhere...:)

Thanks,

jon

The kernel's documentation subsystem has suffered from decades of relative
neglect, but we're trying to improve the situation now.  Some introductory
information can be found in:

	https://lwn.net/Articles/692704/

Those with a high level of patience can also see my linux.conf.au talk on
the subject at https://www.youtube.com/watch?v=jY_C-Z0qMSo .

There are a number of introductory tasks that can be taken on as a way of
gaining familiarity with the documentation area and its build system.
These include:

 - Fixing typos in the documentation itself.  There would appear to be an
   inexhaustable supply of those.

 - Fixing warnings in the Sphinx build.  Most of these will come down to
   editing kerneldoc comments in the code itself and feeding the resulting
   patches to the appropriate maintainer.

 - Converting existing DocBook template files or plain-text documents to
   ReStructured Text (RST) and placing them properly in the growing
   hierarchy.  Please ask me first before taking on plain-text files; some
   of them are better targets than others.

When it comes time to choose more involved tasks, the following sorts of
things come to mind:

 - More extensive documentation conversions to RST.  This might involve
   organizing the documentation for an entire subsystem and integrating the
   existing plain-text and DocBook documents.

 - We do not yet have an API guide for application programmers.  One could
   be started, with suitable documents converted and integrated into it.

 - Somebody could work on the documentation build system itself.  It would
   be nice to have a robust script to create a build environment in a
   Python virtualenv for people running on a system without the requisite
   packages installed.  It would also be nice to have a good set of
   instructions for needed packages on a variety of distributions,
   especially when it comes to PDF builds.

 - We lost the ability to generate man pages as part of the Sphinx
   transition; it would be very nice to get that back.  Some work toward
   this goal (in Python) exists, but it would need to be finished out and
   integrated into the build process.

 - We are reaching the point where better indexing would be worthwhile.  It
   would be nice to index things like configuration variables or boot
   parameters, for example.

 - Most of our existing documentation "books" are really just collections
   of documents that have been shoved into the same drawer together.
   Someday we need to go through them and rewrite them into a single,
   integrated set of documentation.  This could involve both writing new
   material and editing/organizational work.

 - There are a lot of kerneldoc comments in the code that are never
   extracted into a processed document.  There is also plenty of
   documentation that simply needs to be written.  The two tasks together
   could help to expand our documentation nicely.

 - It would be wonderful if the rst2pdf tool could be fixed to the point
   that it was capable of processing the kernel's documentation and we
   could dump the LaTeX-based toolchain.  This is probably *not* a simple
   task, though, and should not be taken on lightly.

 - The kernel-doc script is 20 years worth of accumulated Perl regex
   cruft.  One attempt has been made to replace it with a simpler Python
   script, but that has not been carried through to completion.  Others
   have suggested that, rather than writing our own C parser, we should
   build on other tools that already exist.

 - Nobody has yet put any effort into the theme used with Sphinx to make it
   attractive and suitable for kernel documentation.

 - We could start documenting tracepoints the way we document kernel
   functions; this would, IMO, be of tremendous value for our users.  This
   task involves making the kerneldoc script recognize tracepoint docs, and
   making our kernel-doc Sphinx extension extract them on demand.  And
   writing a bunch of tracepoint docbook comments, of course.

This list is certainly not exhaustive; if you have other ideas for
improving the documentation, I would be glad to hear them.

