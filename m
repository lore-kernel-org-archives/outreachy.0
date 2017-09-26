X-GM-THRID: 6470101655297720320
X-Received: by 10.25.17.102 with SMTP id g99mr972791lfi.14.1506449734811;
        Tue, 26 Sep 2017 11:15:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.16.197 with SMTP id 66ls2975761ljq.1.gmail; Tue, 26 Sep
 2017 11:15:33 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDfCl9HKUrCtD+T+TsF/oVUMUx+BpFQvHDyzN3Ml38tiy7M7FVhT6ZOfBdcdf5wm+F/HeDo
X-Received: by 10.25.41.149 with SMTP id p143mr684538lfp.5.1506449733393;
        Tue, 26 Sep 2017 11:15:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506449733; cv=none;
        d=google.com; s=arc-20160816;
        b=iSj9W6+/FaIfRzKan3Qb/xgWzqrrbl6oJ8/B5o5SgxmuUK8ii8hIBhPcyb4KVoWD1E
         sZ5VXPKpIu2TsPww62gFwXYPT9quATASI5lsv5NGkWeDSPQDgu4wr6XwqCEwl1PurMYN
         CT1uBcGchz4yG7DNAjtRiGTv4O2SzuZfx9c1UP+XJJzTz1uXfHaJKNbaYKELojWdOcsr
         rIXuZhozNcPQrdDWm0rvU4FdMXhCKb+jicmA6TbAYjKF+ZYkN+4rbSP62pCX76ga29sH
         rtxMFNCGnhy74gkweVLtH7YspzZXY6CNebqyCIHum5TQGJsd9ZJ8vXGumfMKivn9DJ5H
         Oa3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :arc-authentication-results;
        bh=CHA+21pTJURCxMRNlud91WsD7sNfWPmLJxHCf8e6Qn0=;
        b=0iYoFAlKyFTzp41Fg29KjQwhpFg+7XQd78rdGpJWpZ8NX3haJUo83z78cYiGJUkicU
         gX7bSraGWVEzebWAnYAV/UA6umZargI9kyeIPSO+9OTiBUXLs8/GgKdQK+o0VnXkP3W/
         UHzG5/CREfwY8cXp+Vc/D5hzieQzBLkQrSag6bxu+wml0brEVwH1zB1LXLDpEyfkFtFm
         iYUbfRWRUU8MYMZ2tVhqzu0RIRbQKJaS/jdzAufofd1RUVbCz88c0OiwEaUN50AOlyT0
         8E8EgreSvzK718q/0ClHjyNYQ5XEm9UMpwJuwWq51PISWioAMe6LV8XfAlkjl6AIk4J1
         569A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id 191si156463wmn.2.2017.09.26.11.15.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 11:15:33 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.132] (helo=sslproxy03.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1dwuOK-0000wt-To; Tue, 26 Sep 2017 20:15:32 +0200
Received: from [93.104.178.63] (helo=[192.168.178.40])
	by sslproxy03.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1dwuOK-00070w-KY; Tue, 26 Sep 2017 20:15:32 +0200
Subject: Re: [PATCH v2 0/2] staging: iio: adc: ad7192: use private driver lock
 to protect hardware changes
To: Aastha Gupta <aastha.gupta4104@gmail.com>,
 outreachy-kernel@googlegroups.com, hennerich@blackfin.uclinux.org,
 jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net,
 linux-iio@vger.kernel.org
References: <1506440468-5081-1-git-send-email-aastha.gupta4104@gmail.com>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <e4b443c0-7d7f-e353-61c5-32867bfe01eb@metafoo.de>
Date: Tue, 26 Sep 2017 20:15:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1506440468-5081-1-git-send-email-aastha.gupta4104@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/23875/Tue Sep 26 14:44:28 2017)

On 09/26/2017 05:41 PM, Aastha Gupta wrote:
> The IIO subsystem is redefining iio_dev->mlock to be used by
> the IIO core only for protecting device operating mode changes.
> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
> 
> These patches 
> - replace mlock with private driver lock 
> - add lock where there are hardware state changes 

For this to make sense both changes need to be in the same patch. You are
removing the protection in patch 1 and then adding it back in patch 2. A
patch series shouldn't leave the driver in a broken intermediate state if
only part of the series is applied.

