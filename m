X-GM-THRID: 6752344874745331712
X-Received: by 2002:a50:97af:: with SMTP id e44mr13793580edb.3.1572174657629;
        Sun, 27 Oct 2019 04:10:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:e04d:: with SMTP id g13ls2446816edl.9.gmail; Sun, 27 Oct
 2019 04:10:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyongwY4SlKIYwVODBywgFMXXfO7V9iSrcSG/y232qdcBjekzyz9jNbNmadTY7/W//DbkeD
X-Received: by 2002:a50:90a6:: with SMTP id c35mr13866102eda.22.1572174656556;
        Sun, 27 Oct 2019 04:10:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572174656; cv=none;
        d=google.com; s=arc-20160816;
        b=GNUUKbkqjc2D3wuhIOQDbKWUODYgsNSi9jvCF4aLiw3tsBkixNNZfUYrOfVOvYwlnC
         IEWxMB5uMua/qJpf5YuvZL2Lxi+nQJXHm1dd1Tff+lN5mM2AS8ViIRPr4/N+xwIyJ8uX
         BCKDndHN7g+8AXYw0Dn21ZwdCxAomi82eTLMelvQBZsqbZFW2V6xFwZkjtVValCQxhL/
         qVzxvLHyy8RNJcPr5AI8plrFbQohJ8I9KUl9aa2X7tirn08oSeABnun4V6/zU8mkwyEB
         krX9qKenPRN+SxZAVsTAFiiNArqURHKuNrZxVPxZQe7ScBWq2gywwM9lqlK83Dm6KOc6
         EnkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=AkICjFFU0EnSJXWsga6xVhua07DI/0TshuOQgmtC0oI=;
        b=cNe+cS3dBcY1nlmFZw4gd9fiEjo1EStTshLdO5+f7L67KPcM0RrglfeAc4EwpnlHCp
         qulBDuIg+LCYaeLwnN1K9xfkTARkP9kzt4volWisYTuUCgJ5QuGDM2hP3RApyvI0WxQH
         xyuGl0qNqkYwNzUx0Om8zy6bq06QtqyYP1r0q62E+UClfUvHveB6J2ftPvHbwiga4Ry3
         HxLreXyCptLhdmr0i5GdfhnYlIFmFq/yAvuWvs3ZNU6ytN0ekrfASmduMneU3gaeol7T
         Yq9u97wldjXCsFGoIJV5ggqafJjiymLU/afLRz3BRmYPMFFMSRiR2ZT9f2tx8ro5ee7C
         TyMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [185.233.100.1])
        by gmr-mx.google.com with ESMTPS id c28si471281eda.4.2019.10.27.04.10.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Oct 2019 04:10:56 -0700 (PDT)
Received-SPF: neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=185.233.100.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id CD1331621;
	Sun, 27 Oct 2019 12:10:55 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I3ZG2ijTQLcC; Sun, 27 Oct 2019 12:10:55 +0100 (CET)
Received: from function (lfbn-bor-1-271-187.w109-215.abo.wanadoo.fr [109.215.110.187])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 235191587;
	Sun, 27 Oct 2019 12:10:55 +0100 (CET)
Received: from samy by function with local (Exim 4.92.3)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1iOgRh-0008T2-KO; Sun, 27 Oct 2019 12:10:53 +0100
Date: Sun, 27 Oct 2019 12:10:53 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>, outreachy-kernel@googlegroups.com,
	saiprakash.ranjan@codeaurora.org, joel@joelfernandes.org
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Fix multiple
 assignments on a single line
Message-ID: <20191027111053.kjts2jybqtr376qa@function>
References: <20191027050640.GA24283@linux-kernel-dev>
 <20191027071310.GC1704509@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191027071310.GC1704509@kroah.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)

Greg KH, le dim. 27 oct. 2019 08:13:10 +0100, a ecrit:
> As Julia said, the original is better here.

Confirmed, we have already had this patch suggestion in the past, but we
prefer the original version.

Thanks for your contribution anyway!

Samuel

