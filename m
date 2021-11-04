X-GM-THRID: 7025609319157596160
X-Received: by 2002:a63:2cd8:: with SMTP id s207mr38852292pgs.312.1636036423734;
        Thu, 04 Nov 2021 07:33:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:194d:: with SMTP id 13ls1158823pgz.5.gmail; Thu, 04 Nov
 2021 07:33:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxpGKD1TdyH1FaqfAjR64zj9XA3ZnrX1F+eTP4p7Ju2xi34rTQUcVvBUdccXVNSFunIklWb
X-Received: by 2002:a63:e906:: with SMTP id i6mr12615338pgh.223.1636036422163;
        Thu, 04 Nov 2021 07:33:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1636036422; cv=none;
        d=google.com; s=arc-20160816;
        b=Ev4ncvAUaReNXPRjVsv5GV2ByHdPuo/Oys0SV5t6ncmWURFymp0J33Q55zoOxX44cL
         qb7R3fZvoWqjHHi4yiNWrmV8Dhl4iLdQCAMOaJ23PKmbcgUMZpiszmSqcg0E1jATstVw
         Jw0cqQOv7NgsqmBvvItSI5KDF+tvM4ibnvkFH4fMStGWXMIGpQM5bdg+b02jVSPMy9/v
         S4Gi6My8UPEUlgIu5rxh8zhZ61NpIoT/j9Cze1CPgA+4LKJGpcMnyVXZIcObh+Nlb4tX
         43pJxVXtgFG50zVVC2jfiJvy0rKHN1/chneMt2MH/mmc0TAaLJBbokAHMRNt0LeCo34o
         dqcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=3CPIYWKj4mqEVlqL9LaH7YV6DfK0ZO+GMNIbfqbJj5s=;
        b=BBNiLGeWp2LbiwbWksTSm3NAG0R6FHdRa+aOSi4pWw3isbrXMaFmi//7rqchbiUKAp
         rm79Z243ZM60TKShc0PTQXp70oe6zL4TcH1iOPhjPU6HBXzF4i/8OoYxjx5fJ4MgWlD9
         jEdJM0Px3FTOD/rT20UkpDj4dXeNqQ6CzsfOhZ8tkA2lDGg3K8HcUJcglvS7iEV9Jo9E
         IrH0UpiESJab9Uq4ewq+2AoRPq46mihIz/Olku6dmhNylTJ+wxkhnVF/SyjUhqcZWhUd
         hTLmR/G7qU4HI8wZAObDERdiIRJtLp83h4rJE8re25ERMIdAUzq1qIVEdYFdVGoSxSTm
         ILAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.5 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0005.hostedemail.com. [216.40.44.5])
        by gmr-mx.google.com with ESMTPS id b3si353412pjq.2.2021.11.04.07.33.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Nov 2021 07:33:42 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.5 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.5;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.5 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from omf08.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 012C2180CE8B1;
	Thu,  4 Nov 2021 14:33:41 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf08.hostedemail.com (Postfix) with ESMTPA id 2F3521A29FB;
	Thu,  4 Nov 2021 14:33:39 +0000 (UTC)
Message-ID: <2dd81d1a081562dc38bf9d8c6c73b432c5c5f496.camel@perches.com>
Subject: Re: [PATCH v2 1/8] staging: vt6655: Introduce `idx` temporary
 variable
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Karolina Drobnik
	 <karolinadrobnik@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
	forest@alittletooquiet.net, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Date: Thu, 04 Nov 2021 07:33:36 -0700
In-Reply-To: <20211104120906.GZ2794@kadam>
References: <cover.1635773679.git.karolinadrobnik@gmail.com>
	 <34bd0e8f42597edf006a950d420345befc4e0bc2.1635773680.git.karolinadrobnik@gmail.com>
	 <20211104120906.GZ2794@kadam>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: 2F3521A29FB
X-Spam-Status: No, score=-4.03
X-Stat-Signature: ym7brcnsortog1j73xkg4kdzqxc7tnr5
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX18uR0zxuo0tNhsoMrtOh3B2gvog+OSoLGg=
X-HE-Tag: 1636036419-603949

On Thu, 2021-11-04 at 15:09 +0300, Dan Carpenter wrote:
> On Mon, Nov 01, 2021 at 02:31:59PM +0000, Karolina Drobnik wrote:
> > Add a local variable to store `MISCFIFO_SYNDATA_IDX` offset.
> > This change helps in shortening the lines in `rf.c` that
> > are deemed too long by checkpatch.pl.
> > 
> 
> I started reviewing the v1 patch but I should have been reviewing this
> patchset.  Please don't do this.  Leave the constant as a constant so
> we don't have to look it up.

It's just an intermediate step to use idx++.
Personally, I'd combine patches to add and use idx++ directly.



