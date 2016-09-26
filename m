X-GM-THRID: 6334501758545428480
X-Received: by 10.25.75.21 with SMTP id y21mr1032796lfa.11.1474886606883;
        Mon, 26 Sep 2016 03:43:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.41.135 with SMTP id p129ls1384623wmp.9.canary; Mon, 26 Sep
 2016 03:43:26 -0700 (PDT)
X-Received: by 10.28.206.2 with SMTP id e2mr122748wmg.0.1474886606227;
        Mon, 26 Sep 2016 03:43:26 -0700 (PDT)
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id y6si518468wmg.0.2016.09.26.03.43.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 03:43:26 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [88.198.220.130] (helo=sslproxy01.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.85_2)
	(envelope-from <lars@metafoo.de>)
	id 1boTNb-0007LO-6e; Mon, 26 Sep 2016 12:43:23 +0200
Received: from [2003:86:2c57:7e00:8200:bff:fe9b:6612]
	by sslproxy01.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-SHA:256)
	(Exim 4.84_2)
	(envelope-from <lars@metafoo.de>)
	id 1boTNa-00062A-Vx; Mon, 26 Sep 2016 12:43:23 +0200
Subject: Re: [PATCH 1/2] Staging: iio: adc: constify attribute_group
 structures
To: Bhumika Goyal <bhumirks@gmail.com>
References: <1474866099-12282-1-git-send-email-bhumirks@gmail.com>
 <1474866099-12282-2-git-send-email-bhumirks@gmail.com>
 <10137f4a-6794-e043-1525-e4152b568ec1@metafoo.de>
 <CAOH+1jHJNZ9H-Cr05cjVtkn=5Gyf=7JbPGxWDr=HZAoKChv+1w@mail.gmail.com>
Cc: outreachy-kernel@googlegroups.com, jic23@kernel.org, knaack.h@gmx.de,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
From: Lars-Peter Clausen <lars@metafoo.de>
X-Enigmail-Draft-Status: N1110
Message-ID: <10325370-88d2-752f-8304-94a649af2803@metafoo.de>
Date: Mon, 26 Sep 2016 12:43:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.1.0
MIME-Version: 1.0
In-Reply-To: <CAOH+1jHJNZ9H-Cr05cjVtkn=5Gyf=7JbPGxWDr=HZAoKChv+1w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.99.2/22254/Mon Sep 26 11:36:17 2016)

On 09/26/2016 12:03 PM, Bhumika Goyal wrote:
>> This patch also raises another issue. In this driver we have two
>> > attribute_groups, one for the device attributes, one for the event
>> > attributes. The device attribute group has now been made const, but the
>> > event struct has not.
>> >
>> > For some reason the event_attrs field in the iio_info struct is not a const
>> > struct attribute_group. Even though there is no reason why it shouldn't be.
>> > Let me know if this is something you want to fix, once that is done there
>> > are a few more attribute_group structs in the drivers that can be made const.
>> >
> Well, I thought of constifying the attribute_groups structures for
> event attributes but then as you said the event_attrs filed of
> iio_info is not constant so left it. But I would definitely like to
> work on this further. So, firstly I need to find why the event_attrs
> field can be made constant in the iio_info structure definition?

As far as I can tell this is simply an oversight, there is no reason why it
should not be const, the IIO core is not going to modify the field, it is
handled in the same way as the device attributes. The best way to handle
this is send one patch to mark the field const in the iio_info struct (with
an explanation in the commit message why that can and should be done) and
then send the cleanups as follow up patches.

- Lars


