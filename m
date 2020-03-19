X-GM-THRID: 6805880138024091648
X-Received: by 2002:a7b:c856:: with SMTP id c22mr3237129wml.98.1584617453783;
        Thu, 19 Mar 2020 04:30:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls809584wrr.4.gmail; Thu, 19 Mar
 2020 04:30:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtX3EKuTvCrvwN69sosgDeBdIQfcw0ad7ZafDJSW4cIgjoXT1vCrCwsCXtB4Nuu1ytqDObs
X-Received: by 2002:adf:f40f:: with SMTP id g15mr3884845wro.213.1584617452391;
        Thu, 19 Mar 2020 04:30:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584617452; cv=none;
        d=google.com; s=arc-20160816;
        b=A0IrdCXHQvCGMmsPNpHSsZnV1RgCQQAbPnDsSD7jbizUUiLIIRCGEm4EE74OsG3vkB
         qXVtolwS+algBhj464pTMRqovRyywUmmec4mPNpHqAEbqPqVxwKtr+2TKN/ylkpOU/1E
         kH4Xu5PBNWHKAwE8EoCLlai2IXKXUcKEUEpBCKegdFyecOYkIvPbhocnsyraRxPgSHkM
         JCj2KlEBymhjGaal2vsY+Bz6Hk09Io2HGF/PnXtGhxAUdF/En1Cc42i1SIcrjfGdpX6q
         NrxeLGVARGO1Z3PGxbznoG3i2fyLzW7SUPVYV8b/ApnHLZjnnodmDvBDyIyMilwHfqmi
         q63A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=M6JnsHW0pCsGosheBMU3FN6/FMDdBlct9LlXkFO7eSg=;
        b=h1kJU/Ba2/4bEnPXtLemH3wrMyVjRLSBxdvjQwDyyF9O4RQUpqsJg3kGLggpkmJvUd
         /BLi8N0dOAS7AjYUffbkTP/2lCBIhlAtM+OwOLit0X55xpIYOFMn/Vqfa+FYgBPISE/o
         4Euu4oV6G5vNwO7lX0TEya0Ln4DFLntT5Fxaq0ysduOVcVZpKzvUYnYb44zAx3WDymw7
         8D9m0Y5hNzSkKn4OWMFjCLKCFLikTNK7cCLltLebAUGhlSLZ5sYMcOqXb8h6duUzMajr
         HMZUQT+GyzWMHLftQlwVlzL9fv8yZ83GtmD8OV9L2WJ4yS0f9274IOlETa+R4xTf8E+X
         bk6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id i19si100166wml.0.2020.03.19.04.30.52
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 04:30:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 28025 invoked from network); 19 Mar 2020 11:30:51 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 11:30:51 -0000
Date: Thu, 19 Mar 2020 17:00:45 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: I sent a patchset of 4 rtl8723bs/os_dep it is not showing in web
 interface
Message-ID: <20200319113044.GC3889@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi,

I sent three patchset. Two are showing in google group but one is not.

Though I have received mail for all the 3 from outreachy as the subject
line is changed to [Outreachy kernel].

Can you please help.

Veera

