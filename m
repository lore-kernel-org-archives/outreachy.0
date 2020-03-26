X-GM-THRID: 6808264476634120192
X-Received: by 2002:a63:6bc1:: with SMTP id g184mr9392166pgc.404.1585247239904;
        Thu, 26 Mar 2020 11:27:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:9e2:: with SMTP id 89ls4882874pjo.2.canary-gmail;
 Thu, 26 Mar 2020 11:27:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvbPbALo3vfCPVYTwAFJQMAUbSP8CjFxWIpTp8vyW/HlyJBmwv+DjdDt6Jc7m8t5xuodEU5
X-Received: by 2002:a17:90b:4906:: with SMTP id kr6mr1450295pjb.13.1585247238104;
        Thu, 26 Mar 2020 11:27:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585247238; cv=none;
        d=google.com; s=arc-20160816;
        b=sZjUV19MOeMy0BdSCSfGCEndhP4oKgDT40fzPHvC6eGfDUVPR1qKDkGlQLimbS9+dl
         yVt6My/JPutMx3C/CWIEjBV58OYo0ae6Ak455R7kc/WlMOxboIkVcj1qldEh7j95Xo7V
         YCefqviANW2aFlzEcp3nM2cI7q3OpKcV79kZ+LrFjA9/J5Di5PwnD4BtlnDmw8ec3QTE
         lKFfnoN0qEdGRAtGtI0VSkz71YQgdWj31qmff3laGvmpffT4Iero9tSMwvyjSsYDcZ2p
         fX76yR1+J/9WNQE6+XHHufI0QeaUB1hiNccLcE6SIqlkjnPHnNPaYZZayH/6/TgIukRi
         MgYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature:dkim-filter;
        bh=o38dnb32CGjX8brBUo5ZouRpDyVR7JANEbmWnk2DbUU=;
        b=DH3oAsCCPpMYNLh4B1hWv99rZZ0AwGjFctjuBU4KjUZ5fkzCgpW18s0W5r2keTITeP
         MA+68UvLiqwN1+ZPa37HnIbDTGZ7q/AK47vLKE94qhERGOexcg7Ityrg5nQ3qxIbm1J5
         TsLXBNQ/vulcQRU6mmxO+iHGd3CF7465J++B18s9jLiDYhC5CP+YXE42655Fh+xs9WfH
         NOJEFtAM093Tiw0myCz6835+/ZOWsw0DiqZucQA9qdAAWMOfisaeCJcNdfyzuHZsg7js
         YyJ3e9al6371MGudZWoedI0cTxheBxdGSBEJq8W/xj3HPEOjc2SlYTm8wIQni8JNHBV9
         Bytw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=bZymhhX+;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Return-Path: <nramas@linux.microsoft.com>
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id u15si170916pjm.1.2020.03.26.11.27.18
        for <outreachy-kernel@googlegroups.com>;
        Thu, 26 Mar 2020 11:27:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=bZymhhX+;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from [192.168.0.109] (c-73-42-176-67.hsd1.wa.comcast.net [73.42.176.67])
	by linux.microsoft.com (Postfix) with ESMTPSA id 87EE220B4737;
	Thu, 26 Mar 2020 11:27:17 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 87EE220B4737
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1585247237;
	bh=o38dnb32CGjX8brBUo5ZouRpDyVR7JANEbmWnk2DbUU=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=bZymhhX+VPOoHNwMoJgxan6I7+DGZTBmGuKMza4vKzlWiWCfLq8FrRpPUkpFz9P58
	 5rAHHCrvJdAQTRuKPiD5Jsxaq7DxHoW5OcbjdlWKJoAy4vUW771WwG2DXiTGGH1Qfd
	 5LiULj+UfirXnyVf22yPVBW5pNe+XxmEvP0jDfyY=
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Compress
 return logic
To: Simran Singhal <singhalsimran0@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
References: <20200325214312.GA1936@simran-Inspiron-5558>
From: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Message-ID: <27ca4063-f34b-030d-f593-1d9a4f3c1165@linux.microsoft.com>
Date: Thu, 26 Mar 2020 11:27:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200325214312.GA1936@simran-Inspiron-5558>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/25/20 2:43 PM, Simran Singhal wrote:

> Simplify function returns by merging assignment and return into
> one command line.

"Simplify function returns by merging assignment and return into one line".

You could change the subject also to "Simplify function return logic".

thanks,
  -lakshmi

