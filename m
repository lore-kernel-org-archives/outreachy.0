X-GM-THRID: 6342249025672052736
X-Received: by 10.107.150.212 with SMTP id y203mr4960099iod.39.1476669922646;
        Sun, 16 Oct 2016 19:05:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.12 with SMTP id 12ls12521447otg.13.gmail; Sun, 16 Oct
 2016 19:05:22 -0700 (PDT)
X-Received: by 10.237.52.97 with SMTP id w88mr6078782qtd.23.1476669922231;
        Sun, 16 Oct 2016 19:05:22 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id f3si1075969pfa.0.2016.10.16.19.05.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 19:05:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id os4so4562764pac.3
        for <outreachy-kernel@googlegroups.com>; Sun, 16 Oct 2016 19:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cjW8H5N3F2ouQRJk4DG4c+idjIaDdwX99ysiEvVRteg=;
        b=MsJcoU1FbKQZ3fDBMSNcWchTTnUA2+gHcIWewF0D9OVk0oTuolrYe0WrcwVT/G6jTP
         cavijHC1yO9ueK8rIBK1JuXD5jImw2eXJ3j8YevfTESURmE8cVtTxGBMYpUv32XwoYAf
         2JOH/NeNH7X1Sn7OyDlIG173Qsb7ZDbuMhvdKzFsioqDrg4/AxAqj0hwaR0cGWxL7Syo
         0ssKqf8zEuL0Tz9GDu3pMu7q4mG3LpB/Lbtvi4RZJrNSH7qDgSFS/Ud4SQe5XRsLJqgn
         U1JGPjM9gDoS0k7Jzu2APsvbl4cLGj84j7DRXODiMvhP1ftWHRhwjgnhH9uBVMHL4yQa
         Eu0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cjW8H5N3F2ouQRJk4DG4c+idjIaDdwX99ysiEvVRteg=;
        b=Yb1Hho4vfDWxz4jMWivLsjEpannO5zudSuDQ7czxpAbw+zNPyWqQWfYdhLTRVjPWtK
         WYo0dca/2EQ78KzQ7psAAIjuV63xDkyVXDq6pljAEXEIHOqzl2kDpbVXxzDFcv9XCrZ+
         iKz67Czl8nBS/CGnyRQ127YmZwHIh0hzYjoH31KL8wJMOTuMjT6jZJk9982nghp3NO5g
         5QbRrPbQyXU0lNhva7bNMVJ1sINg8i5leaTFQNJGohZOhhMsGZ/lQGxrHaKrtfP42QDu
         6luaccvV0BGHVIGYXT7zXlJmEDEy03LHskjXL1iow2Zr5WmCFwYn0PhOB5ImTk2BxsmI
         4FDw==
X-Gm-Message-State: AA6/9RmweFyX2bhUyzn+Yi79VIYTrGREyytDwlLJ9dT0N6xAlUYBrUrhYi+ZhHEtNI7kRw==
X-Received: by 10.67.22.102 with SMTP id hr6mr8490402pad.176.1476669921991;
        Sun, 16 Oct 2016 19:05:21 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id h1sm559967pfg.3.2016.10.16.19.05.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 19:05:21 -0700 (PDT)
Date: Sun, 16 Oct 2016 19:05:19 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com
Subject: Coccinelle Timeline
Message-ID: <20161017020518.GA6836@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Hey Julia,

One of my ideas is to do some outreach for constification, and/or
constification using coccinelle, such as a how-to article/blog post.
This could make it easier for people to understand when and why
structures need to be const and when they shouldn't be, and providing
easy spatch scripts and commands could get people started quickly, even
if they don't know coccinelle that well yet. A lot of people are already
using coccinelle, so they could easily do constification.

Document the process of constification more thoroughly. For example, I
noticed that sometimes structures would be passed to a register or
deregister function and that was a sign that they would be altered.
Document cases like these as "When not to Constify".

Write better coccinelle scripts to eliminate these cases if possible.

For example, Bhumika helped me out by giving me this script to catch all
static structs that didn't have const:

@r disable optional_qualifier@
identifier s,i;
@@
* static struct s i ={...};

That's a lot of cases. So maybe write scripts that
eliminated cases in which i's members are being modified in the same
file. So I wouldn't want anything that looks like this in the file: i.x

Month 1:
Learn more about whether or not to constify. Document these cases and
send in patches when constification is appropriate.
Develop spatches that can eliminate false positives that were
documented-- hard part.

Publish articles like "Constification using Coccinelle" explaining why,
when, how.

Can helper scripts (bash) be created to facilitate the process, similar
to Small Task 2? 

Learn more about what it means for code to be modifiable at runtime.
Constification of which structures is actually helping to secure the
kernel? Where is it highest priority? How do these attacks work?
Are we working on code that is built in to the kernel, modules, or both?

Month 2:
Learn about __ro_after_init, and what initialization in several steps
looks like. How to identify these cases? How to use coccinelle to
identify them? When does __init need to be added?
Document those cases, send in patches, publish findings.

Month 3:
Reflect on progress and think about what further steps need to be taken.
After adding const, __ro_after_init, and __init, is the problem solved?
What other security risks can Coccinelle address besides
constification?

Thanks,
Liz

