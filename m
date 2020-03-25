X-GM-THRID: 6808244889450446848
X-Received: by 2002:a02:bb81:: with SMTP id g1mr5094361jan.38.1585172406674;
        Wed, 25 Mar 2020 14:40:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6638:97d:: with SMTP id o29ls475261jaj.4.gmail; Wed, 25
 Mar 2020 14:40:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vurPNH57iY6kHBZKBxmJFGRNzM4NTBASpui9haTSxYJbTsxMLjzIQScQl9R/MqJjT3ifpQU
X-Received: by 2002:a02:6055:: with SMTP id d21mr5068970jaf.21.1585172405198;
        Wed, 25 Mar 2020 14:40:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585172405; cv=none;
        d=google.com; s=arc-20160816;
        b=JDIjqtu1nx3EvYJIM02He71+5ngkXCgnpkaiV627uOcbxuTu5HgBZG6+C+Iv0MOBC5
         ytrIJ/DawwE+sWAZo01CCLotx22xE9/1LpJ4MqW9ABW0Mf6PYnl4sx9/+Jojthy06goc
         OEZ4MYD6BLVUb7HsN4t4jS0h9B4ttBHZXvHM2QVrEFRe4wZCXkGcbgs1ZBtF3HZ105lC
         Lg9ektiz87hGUc10YD2BH3uUObZWp3ZV3IGAsaJanaAnkfm3qOX1mqTVrG3ombvPdJMs
         uNdSEczpaz1zJBTP2NYYAeM2asItw9/UJGfe+hrrdHSzVG4n1+ERU7rBCU8QLOaICUcc
         ftHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-filter;
        bh=8mxFHZ30y2sVuiHPvu/e/5PCjnwZnLUQeBoOjb5to3s=;
        b=sZrSXN/T6UQ3/Tl2L2UMdMfKdxwcTu+vYgA8CKm515MzTPGViNcZphw6Ll4RUotsH7
         L7GGQ/ExFncK/4dTR4k6GvkHRruVW+DXFEXH76X6QHPpiKACemdevyW8JfIMqvc5ZH9o
         FZYGW51uzt8V0wNXzFa3oAT9osRQR3hoWuXT7w6pFBBV/64GlE74DXheV94/s+NJaDqM
         Bk2A4X4p31FKNvU5WGmD7AeV8G4m4HFb2ULq9HOvBS6S/rhXlCjWmTaq7cF+u9F4KcpN
         TJK+cX3o9Vu78LpwRs0T3Sx7zbAO8Wb8oeI8o5ofGzc/IPRwHbhDL2r49v02KoceQdw2
         aEDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=Z5WLFwL3;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Return-Path: <nramas@linux.microsoft.com>
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id d207si41079iof.3.2020.03.25.14.40.05
        for <outreachy-kernel@googlegroups.com>;
        Wed, 25 Mar 2020 14:40:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=Z5WLFwL3;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from [192.168.0.109] (c-73-42-176-67.hsd1.wa.comcast.net [73.42.176.67])
	by linux.microsoft.com (Postfix) with ESMTPSA id 53A6D2010C2D;
	Wed, 25 Mar 2020 14:40:04 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 53A6D2010C2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1585172404;
	bh=8mxFHZ30y2sVuiHPvu/e/5PCjnwZnLUQeBoOjb5to3s=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=Z5WLFwL3JcPQSbSrjaPXSGflPJnzU39s4PGJ4Vw59xLNB5GcfPuCA3sL4CO+FTiDC
	 GicUDbbf2ae3h3OCv6pTLdA8kXK8tYsaC4qgt8ELgeI361eLOUv0Amh7iMb3tBg+Ex
	 /Z63BoybQyQJESbQ7vt4X7eI/txrysD5S2g/O9cc=
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon-usb: line over 80
 characters
To: Julia Lawall <julia.lawall@inria.fr>, Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
References: <20200325202714.GA14306@siyah2>
 <alpine.DEB.2.21.2003252137450.2306@hadrien>
From: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Message-ID: <e9a025f5-d8ef-9a2d-61c0-853e2a89bdc2@linux.microsoft.com>
Date: Wed, 25 Mar 2020 14:39:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.2003252137450.2306@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/25/20 1:38 PM, Julia Lawall wrote:

>>   				cvmx_usb_write_csr32(usb,
>> -						     CVMX_USBCX_HCCHARX(channel, usb->index),
>> +						     CVMX_USBCX_HCCHARX(
>> +						     channel, usb->index),
>>   						     usbc_hcchar.u32);
> 
> This is confusing,  It is had to see which arguments go with which
> function.  I don't know if it would be acceptable to add a few spaces in
> front of channel.

I agree with Julia. Can we do the following and still be within the 80 
character per line?

cvmx_usb_write_csr32(usb,
		     CVMX_USBCX_HCCHARX(channel,
                                         usb->index),
                      usbc_hcchar.u32);

thanks,
  -lakshmi

