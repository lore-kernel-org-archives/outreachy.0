X-GM-THRID: 6251954379592564736
X-Received: by 10.112.17.37 with SMTP id l5mr2760028lbd.21.1455647822695;
        Tue, 16 Feb 2016 10:37:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.210.147 with SMTP id j141ls850609wmg.40.canary; Tue, 16 Feb
 2016 10:37:02 -0800 (PST)
X-Received: by 10.194.178.234 with SMTP id db10mr2796499wjc.6.1455647822114;
        Tue, 16 Feb 2016 10:37:02 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22a.google.com (mail-wm0-x22a.google.com. [2a00:1450:400c:c09::22a])
        by gmr-mx.google.com with ESMTPS id e130si817082wme.2.2016.02.16.10.37.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 10:37:02 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) client-ip=2a00:1450:400c:c09::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22a.google.com with SMTP id g62so165010213wme.0
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 10:37:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=f4+aJCeB+23EZp6ljhsHYKKKHTPS4TAyR/PZdM4EjsM=;
        b=TzvSltum1cz5GxE4hIE8worH/3rIQPnX+/2kNQcoSUSwohfKoAP6v5nmaa1tmEsfUi
         Url0fzynYtP0/qMZ2zuVLss6OM1Dh8jcARL9OiuPFnW/E+Sm/AEsvNU03nSYvBEcJfCz
         VeNLC0Rcn98x4hHMjIpXK74B3dL9BXdyufKt17iakTwPSjaucrplUG6upnF/slIvQytU
         81BDE8Xt6wtsyzkxsSx4qpDrOhGrmNu5+LF/xMDgk6nWfK5Va78Pauwzq7VHM4vOlREu
         SwUjxPj7abUNfTHnzY/ZSBq1LAyuV3toTc8lNZ4TiI/jkQJGNpNmbyFyxqc/U6vEElPX
         rnBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=f4+aJCeB+23EZp6ljhsHYKKKHTPS4TAyR/PZdM4EjsM=;
        b=aVIw2eQDA3z1Xwoqyl1N0OdvKi6Bt0aiL1QzJWTY87IA5F/t7mF/WdB/6kZV/+CR/S
         K1J/xn9g7Y1S2lj4D5cxAff98I3IHcfEjkFuZ4Sjq1KtOHnJ/k857Tb/eMoPgIZh0a9M
         l4loo3d9aX8drHK97jHyKNyYYqC89okShn6xh5mRxidlppEi5/YdloZMSIOrYZaCXsKB
         il/+HwLTkEyQ477fLZLb2Kio0/wi027ZHfHeDzUf0jCzaAJkv8tWQMMkBcDj7xqVmaY5
         64tsojPrmX8lWi8GdTfibDVHi9SmnbEVuw21zvneJlRZZfkpa7uH7iQ92tOI2xgPkFog
         nEAw==
X-Gm-Message-State: AG10YOQvjnMmJ4YRExBf9akwxYNqQKQhRcoOpmeGpabKnT4wpn4S8pQ75PNubgFJaC/HWw==
X-Received: by 10.194.192.36 with SMTP id hd4mr20991451wjc.85.1455647822013;
        Tue, 16 Feb 2016 10:37:02 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([91.126.73.162])
        by smtp.gmail.com with ESMTPSA id i1sm31370730wjs.45.2016.02.16.10.37.01
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 10:37:01 -0800 (PST)
Date: Tue, 16 Feb 2016 19:36:59 +0100
From: Laura Garcia <nevola@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Presentation
Message-ID: <20160216183658.GB9911@sonyv>
References: <20160216181557.GA9911@sonyv>
 <alpine.DEB.2.10.1602161317310.2685@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <alpine.DEB.2.10.1602161317310.2685@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Feb 16, 2016 at 01:17:44PM -0500, Julia Lawall wrote:
> On Tue, 16 Feb 2016, Laura Garcia wrote:
> 
> > Hi list,
> >
> > My name is Laura Garc�a and I'm an Outreachy Round 12 applicant.
> >
> > I would like to apply for the nftables project with Pablo due to my network load balancing study. I've been looking for any task related with that project but the tasks URL link doesn't seem to be updated:
> >
> > http://kernelnewbies.org/OutreachyRound11
> >
> > Should I contact directly with the mentor?
> 
> Yes, please contact the mentor directly.
> 
> julia

Ok, thank you!

