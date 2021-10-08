X-GM-THRID: 7016533612499566592
X-Received: by 2002:a7b:cbc4:: with SMTP id n4mr839181wmi.37.1633664037261;
        Thu, 07 Oct 2021 20:33:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:c782:: with SMTP id l2ls1217516wrg.2.gmail; Thu, 07 Oct
 2021 20:33:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzSemz83d5QuD10eeEnJFGC/7vlkyWqlls9KFgU31SZivWkf2THt8UWXuLNrmilwukccywN
X-Received: by 2002:a5d:64a6:: with SMTP id m6mr960416wrp.282.1633664035658;
        Thu, 07 Oct 2021 20:33:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633664035; cv=none;
        d=google.com; s=arc-20160816;
        b=GRpHUQC3v4MoZMJTC5XihUXKWRXF6mHa9NFNa5CmT44XnaGRd/ykQdpRu7/uzY4Z+L
         AF1nsDVbnX2s+HHEQI/Z+Y6NBHGjl9UNaSUFQvHIrvCGjKe9qN4FpHpDJm3lspRuPMQ6
         q9UyLsauYt7Hmuhp2pI8NVHVQMWR3G3QTcnFUJUi/ocbXodmUpVWB7GKnaI+430oqEe8
         9FxFZIj1znQtu+CRt/IFC2vtkTBeCZ2mlpuJK1pse0kq1Oo4Qo9dKMB6aW0m52qUTX4+
         XKFe2Sr+64fKJdVs5o4D/pQtmxksnlXekOG4QfOMuFlmnr+ILsYqeU2YVKT1MP4QrpBy
         m6Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date;
        bh=iF3GiLcQ4TZXvhxnuufaiFXdZtKVPV6ktWLc7Y4zBws=;
        b=BvjBIZrVRB6V348EpPb12dO3MQKRIR/FUf5/cduUCxIjZYe1jJLyNAIoaAGt0IJdqg
         1LiK5mqSNZOpQ5EAdk+aW6lfMhthjdFRHjhZn+2JSWJAJ3qt7HdhM4yb2+XPveoOGv+2
         1TUPQrSGs0aRQ2BJnd/iZiFoALSE61fNhddbL04RFAI6amPrDmBnkiC6TpxwXmqj/pF0
         rcqVvg9oSNAkq7TcBB0CCTO4vdxBTYu/MPIbNmQ2qNuYmk+c8ZQpka2cOr7SXotN9IG+
         B5G2jaicKvijk0IrQ4FqF2pRYjgWI0Ana8ysC0GogAdqccVaG024vNJEBixwcCtcrvW6
         6Acg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id a11si53661wrh.5.2021.10.07.20.33.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Oct 2021 20:33:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="223834503"
X-IronPort-AV: E=Sophos;i="5.85,356,1624345200"; 
   d="scan'208";a="223834503"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Oct 2021 20:33:53 -0700
X-IronPort-AV: E=Sophos;i="5.85,356,1624345200"; 
   d="scan'208";a="439780295"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Oct 2021 20:33:53 -0700
Date: Thu, 7 Oct 2021 20:42:11 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy Contribution Period is Open!
Message-ID: <20211008034211.GA394953@alison-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Welcome Applicants,

Please read this *entire* email, even if you have applied in the past.

Our contribution period process works entirely via this mailing
list. Make sure that you read over the emails on this list daily.
Mentors and I will post any updates here and it is your chance to
learn from each other.

Your first task is to use our tutorial to setup your system.

http://kernelnewbies.org/Outreachyfirstpatch

Ask your questions in this mailing list. Please help other applicants
who face issues that you've addressed.

After your system is setup, the tutorial leads you through submitting
your first patch. Please do not submit your second patch until your
first patch is accepted. It may seem like a reach to get 10 patches
submitted, but the magic is in the first patch, I assure you ;) Key
point is that it is really helpful and efficient (for both submitters
and reviewers) if you refine your skills one patch at a time.

You are required to submit patches to this mailing list and to the
mailing lists and maintainers derived from get_maintainer.pl. The
tutorial walks you through how to use get_maintainer.pl.

Once that first patch is accepted, you must record that contribution
on the Outreachy website. This will close the loop on that first patch.
It will also force you to double check your eligibility. Only eligible
applicants will be able to log contributions on the Outreachy web site.

Please be aware that community coordinators and mentors do not have
any role in the initial application process of Outreachy. Please email
Outreachy organizers with any questions about your eligibility.

Congratulations on getting your first patch accepted into the Linux
Kernel! Celebrate, then do more!

Once you have completed working on a good number of cleanup patches
and they have been accepted by Greg, we encourage applicants to move
on to complete some small tasks outlined by the mentors. It’s
preferable to CC the mentor when you are working on the task so that
they don’t miss it. Small tasks for the projects can be found in the
project detail here:

https://www.outreachy.org/apply/project-selection/#linux-kernel

Please record recording your contributions on Outreachy's website
for the each project you are planning to submit an application. Keep
editing your 'project contribution' on Outreachy's website based on
your accepted patches links and project-specific completion of tasks.

Make sure to add your project preferences under the question
'Community-specific Questions' in the application.

Applicants should also join the #outreachy IRC channel on
irc.gnome.org, and the #kernel-outreachy channel on irc.oftc.net. If
you're having trouble with IRC, please ask for help in this mailing
list.

If you’ve applied to Outreachy before, you’re still required to send
a few staging driver cleanup patches to re-familiarize yourself with
the process before you start to work on tasks.

There is a tips section at the end of the tutorial to outline what
behaviors we look for in potential Outreachy interns. I hope this will
give more insight into our selection process.

All the best!
---
Alison Schofield
Outreachy Linux Kernel Coordinator

