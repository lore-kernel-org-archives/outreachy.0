X-GM-THRID: 6535126466824241152
X-Received: by 10.98.182.6 with SMTP id j6mr7184049pff.38.1521739760649;
        Thu, 22 Mar 2018 10:29:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.117.11 with SMTP id q11ls1434845pgc.21.gmail; Thu, 22 Mar
 2018 10:29:19 -0700 (PDT)
X-Google-Smtp-Source: AG47ELt2+4AwEwNb8hJXIFFh+5xaiy7ohaEu4NDAH7YFHYmloAmWKKt0Hft23xaiNZQlLohAbff6
X-Received: by 10.101.66.139 with SMTP id j11mr7273045pgp.165.1521739758985;
        Thu, 22 Mar 2018 10:29:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521739758; cv=none;
        d=google.com; s=arc-20160816;
        b=U+GyNMIBnGtLoe2cLNsD92h36qQlWWVyyhcA+4Of+PKVTsWOuY+V+7JOyptMb71qaa
         Kme4il2yfXhjlTqNiUKi1TWvyzHCgB8YBgjzLfUa7ltWZGVC0UFtJHWW4imVY7TX8VeH
         /kltBzGfPD+QDQvh0VC56DDg77aBnUm/6RLPFYsrvcWUNOLZrp2OMUY9fXzYeiUVH28t
         AichB9V0kuXAG0h2AsECwJBLllVP8lgX9pSWqqDLLMbA+fRAZN5OUqz6rQtG0yFtQSx2
         +pTWNC7PVOQWMfYfF1Al7FMN9SQLIRwJGMV5Gjm/RmBQ9siRTR4d8qDgd3lZ+5x8VG1f
         d8HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=wowbe+wV5VF8RZRdpECNgIvcOR8/KCZyYNuOnpVLdLY=;
        b=lxeT+590adsyTZs/UWDuU+XJ6xWABOd1MLDJkKVr8xPN9nDaeT6sMHld6BciNG4ZZJ
         wEwPvFI47ukin1l5aSZdats0lJ00oPyH9Uzw2xR6+hvqFHXdosIq1cmtgbbJp3CWlJxi
         88vyjUiprCAvAR0dACW0vSQDtYttNQnmc5TG6QQd3jhTz2Vlt7kp5WJA6xssWOaNuBTI
         vAfqj/3xabIBpGoVVxki+nnmeqkGgdzke1OqnCXAGeKdOaEcW3kfG8/gYvH4BM503cic
         TEifk5DBcicRqeIz2yMypLwFZdaBiQOgxxd653DNHEux0UaTo+v7P2UDZWlEf9C8XEtX
         6PWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id k1si430392pgt.1.2018.03.22.10.29.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Mar 2018 10:29:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [37.173.15.48])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id DE13A116A;
	Thu, 22 Mar 2018 17:29:17 +0000 (UTC)
Date: Thu, 22 Mar 2018 18:29:14 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 3/5] staging: vt6655: Change typedef struct to struct
Message-ID: <20180322172914.GA5030@kroah.com>
References: <1521577679-21104-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <1521577679-21104-3-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1521577679-21104-3-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 20, 2018 at 08:27:57PM +0000, Nishka Dasgupta wrote:
> Change typedef struct to struct. Issue found with checkpatch.

Your subject and changelog texts are too generic, say what the name of
the typedef you are changing is, to make it easier to search for later.
And to make your subject lines unique.

I've only applied the first patch in this series, please fix up and redo
all of the others.

thanks,

greg k-h

