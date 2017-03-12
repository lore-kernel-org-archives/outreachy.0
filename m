X-GM-THRID: 6396666512989487104
X-Received: by 10.129.72.68 with SMTP id v65mr13773661ywa.22.1489341149420;
        Sun, 12 Mar 2017 10:52:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.173 with SMTP id r42ls1176585otb.26.gmail; Sun, 12 Mar
 2017 10:52:29 -0700 (PDT)
X-Received: by 10.129.52.17 with SMTP id b17mr14270072ywa.107.1489341148739;
        Sun, 12 Mar 2017 10:52:28 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id r66si2727575pfb.7.2017.03.12.10.52.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 10:52:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id w189so60444959pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 10:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=yF3uq+FI1ARw93q1Nu8mtOVlEHr9jP/9dP3tqS9GBvg=;
        b=ITUJVWsAa5dgVp4hZROGRZFQcCrAIB9wwID3gkcnnq/vSdeGJtFiQoKU6QAyt5pLcK
         sykdlVwcL8p8THfWFD3nNEiA37WNpnLqB6YEuYm0OEleqPqgGqYRlYgUdsNDJxDK/ZjW
         /7VaVOQmVQmrdjrKnroXZkT/OnlnT3mji+MPU348gPG7eYmkYtp5ezQE3DRrPWeSKsif
         ebRChWA9Bw1vISynwT+eXdkTNWVRdEsdt58K/HOZ4hKV5tyHXfTUyNjhSS/6gL2slRQg
         ajZDuWk6ndRSw/1aaV0vuXQoyAwsirs8PU05ADca1ynf6qZkC3XNaXsbFin1IAPiygDV
         ERWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=yF3uq+FI1ARw93q1Nu8mtOVlEHr9jP/9dP3tqS9GBvg=;
        b=DQqSot7g0h8d6+i8O9KrQcj1zXSySn94Zo+ldSMZLIjjMoqpY4CLO0tDTz0RTY31YA
         ktSFASa4pydKsdl13zUojQoJKubOjlbkiFsYs6e+m1UdWzE8c2KPvLz+zu/HyqJztGzM
         jV+qtysAGVL2Dmzp0bFym5Z7NzyUhsT9tJ66tU0akazunCLyVtSFf3OLeeaRwULMpoEp
         yMEN0jFK5/KpGpEFAkQ5IVi80u/z40Mi251MHUy6OyNnpr51R+P1t/mL3YTUYQGcCoWS
         PqmlwPUUb+KU6yPZvL9yC4k7AlUrLwI3LFQ33IeCQKGjJb7FCmgHXmQm+OD/0DQiJORU
         Ugug==
X-Gm-Message-State: AMke39lyh5KFMvxSJz/qYAgfyNEcASVsqMPYiy1ocSTCiETY2SBY+kqqxa7/n+YkDd9v/g==
X-Received: by 10.84.229.76 with SMTP id d12mr41876247pln.21.1489341148336;
        Sun, 12 Mar 2017 10:52:28 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id x21sm29537790pgf.15.2017.03.12.10.52.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 10:52:27 -0700 (PDT)
Date: Sun, 12 Mar 2017 10:52:27 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [KERNEL NEWBIES ACCESS] Varsha Rao
Message-ID: <20170312175226.GE3711@d830.WORKGROUP>
References: <58c5864b.c65f620a.d59f8.9c9e@mx.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <58c5864b.c65f620a.d59f8.9c9e@mx.google.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 12, 2017 at 11:02:57PM +0530, Varsha Rao wrote:
> Hello,
> 
> Kindly grant edit privileges.
> 
> Thanks,
> Varsha
done
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58c5864b.c65f620a.d59f8.9c9e%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.

