X-GM-THRID: 6334690503118815232
X-Received: by 10.194.222.198 with SMTP id qo6mr1264900wjc.11.1474963626582;
        Tue, 27 Sep 2016 01:07:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.41.135 with SMTP id p129ls1763474wmp.9.canary; Tue, 27 Sep
 2016 01:07:05 -0700 (PDT)
X-Received: by 10.28.55.205 with SMTP id e196mr125949wma.0.1474963625871;
        Tue, 27 Sep 2016 01:07:05 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id e21si79639wmc.2.2016.09.27.01.07.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 01:07:05 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.132] (helo=sslproxy03.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1bonPq-0005YY-9y; Tue, 27 Sep 2016 10:07:02 +0200
Received: from [2003:86:2c57:7e00:8200:bff:fe9b:6612]
	by sslproxy03.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1bonPp-0000lk-Pn; Tue, 27 Sep 2016 10:07:01 +0200
Subject: Re: [Outreachy kernel] [PATCH v2] iio: temperature:
 maxim_thermocouple: Fix sparse endianness warnings
To: Alison Schofield <amsfield22@gmail.com>,
 sayli karnik <karniksayli1995@gmail.com>
References: <20160926171404.GA11773@sayli-HP-15-Notebook-PC>
 <20160927060539.GA10769@d830.WORKGROUP>
Cc: outreachy-kernel@googlegroups.com, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <3aeed5ee-f067-e0eb-bb7f-529ebd750862@metafoo.de>
Date: Tue, 27 Sep 2016 10:07:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.1.0
MIME-Version: 1.0
In-Reply-To: <20160927060539.GA10769@d830.WORKGROUP>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/22259/Tue Sep 27 07:36:49 2016)

On 09/27/2016 08:05 AM, Alison Schofield wrote:
> On Mon, Sep 26, 2016 at 10:44:04PM +0530, sayli karnik wrote:
>> Fix following endianness warnings using sparse:
>> warning: cast to restricted __be16
>> warning: cast to restricted __be32
>> Use __be16 type for incoming read data when storage_bytes equals 2 and __be32
>> when storage_bytes equals 4. Since the variable allocated already has the
>> correct storage size the patch is classified as cosmetic.
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> 
> Hi Sayli - 
> 
> v2 code looks like it handles both cases. 
> 
> I think you've made a bug fix!  
> 
> When the storage_bytes == 2, it would work on LE systems but give
> invalid data on BE systems.  That unsigned int buf points to a location
> where only 2 bytes of data are placed during spi_read. Those 2 bytes go
> in the upper bytes. Then when the be16_to_cpu() happens that buf
> gets cast to 16bits.  We get the upper bytes on LE systems (good bits)
> but the lower bytes on BE systems (bad bits)
> 
> Lars - Please check my logic and the code too.  If this is a bug
> let us know if Sayli should include a fix tag.

Yes, your analysis is correct.

