X-GM-THRID: 6211053698454388736
X-Received: by 10.129.132.83 with SMTP id u80mr4861973ywf.58.1446188533105;
        Fri, 30 Oct 2015 00:02:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.87.36 with SMTP id q33ls1046337qgd.62.gmail; Fri, 30 Oct
 2015 00:02:12 -0700 (PDT)
X-Received: by 10.129.4.203 with SMTP id 194mr4945582ywe.33.1446188532647;
        Fri, 30 Oct 2015 00:02:12 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id sm2si555382pab.0.2015.10.30.00.02.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 00:02:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id hy1so59480260pad.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 00:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-type:content-transfer-encoding;
        bh=i57iqweARQP3N7/VWiIJBvZuCO00UCqwkhQQ9t42YUI=;
        b=AhZlHt7ZfT+v+rCCFtjhK55oQYluh7cEGJo4q1A0EFx982zjtF3yj4pXLnFXKh6sK2
         V73eg/fHvZdjNMXbzTaesHIUzNAS8H9Ec7Mxcp13VDbXV4IUucekuyP0DqVm/38vQKv8
         uenRexEOlaRxUd8HhbaihbsHGbL3j//d7koSaBHZp4dxgrW5bhtyVCxAGWzH2l+KhjnI
         giK9zSKgrDfLPO5FC+/WZqLFtvvbnNaEhA9NE0fwuZLCxYbhp1fahvaIyEKYM2NjKcqX
         SPeOWNNTGsTz9J8/zwwnztoRdu/k05R4lTlePJkuIREKf8ji57l38JisqrE2nMFOIh9A
         g1Bg==
X-Received: by 10.68.236.229 with SMTP id ux5mr6991006pbc.1.1446188532504;
        Fri, 30 Oct 2015 00:02:12 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from ubuntu ([103.26.195.49])
        by smtp.gmail.com with ESMTPSA id t9sm6163154pbs.17.2015.10.30.00.02.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 00:02:11 -0700 (PDT)
Date: Fri, 30 Oct 2015 00:02:06 -0700
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/6] staging: media: bcm2048: fix
 code indent for conditional statements
Message-Id: <20151030000206.15a80a5c2bbab9b52ec5f575@gmail.com>
In-Reply-To: <alpine.DEB.2.02.1510300749340.2253@localhost6.localdomain6>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
	<6172ee05ab61496792a3b614af31e86fed6fb28e.1446123178.git.amarjargal.gundjalam@gmail.com>
	<alpine.DEB.2.02.1510292141130.2027@localhost6.localdomain6>
	<20151029193943.363556fd6ad8c9ee80e30961@gmail.com>
	<alpine.DEB.2.02.1510300720150.2253@localhost6.localdomain6>
	<20151029234833.eb6cc67b92f1d763d6035553@gmail.com>
	<alpine.DEB.2.02.1510300749340.2253@localhost6.localdomain6>
X-Mailer: Sylpheed 3.2.0beta5 (GTK+ 2.24.10; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 30 Oct 2015 07:51:07 +0100 (CET)
Julia Lawall <julia.lawall@lip6.fr> wrote:

> > > I guess making another patch is a solution, but the reason why the 
> > > branches were double indented was that the tests were already indented - 
> > > the developer was trying to preserve the property that the branch should 
> > > be indented more than the test.  So it would have been reasonable to 
> > > preserve that property in your solution as well, rather than just address 
> > > the checkpatch warning.
> > > 
> > > julia
> > > 
> > 
> > Ok. Then I'll send another version without these changes.
> 
> 
> Oops, sorry.  Now I'm not clear on what you are planning to do.  I would
> suggest to merge the changes into one patch, so that the property of the if
> branch being indented under the if test is preserved.  Is that your plan,
> or are you just dropping the issue completely?
> 
> julia

I think now I got it. I'll merge these two changes.

-- 
Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>

