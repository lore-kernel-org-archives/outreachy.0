X-GM-THRID: 6465168256299696128
X-Received: by 10.28.218.143 with SMTP id r137mr20389wmg.15.1505344621631;
        Wed, 13 Sep 2017 16:17:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.4.129 with SMTP id a1ls301784ljf.4.gmail; Wed, 13 Sep 2017
 16:17:00 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QA+Jsttx0vN/un2J1btLXLfQvvOuBi/LYpReFYQhVnhW23MexGJ1WeGJS4oGQnjrWH7/uRO
X-Received: by 10.46.92.193 with SMTP id q184mr1685236ljb.34.1505344620365;
        Wed, 13 Sep 2017 16:17:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505344620; cv=none;
        d=google.com; s=arc-20160816;
        b=OU5V96I5iyTGgxtTZbU3qTaEHNGAi1IL+ln12HWPP6IdBo2fyfSa42FcHcJyrzEq2M
         9BaJcq2E5Wd//Mhjrl63AhpF2i1iiD40ARDF77s7zrt52aDVr3q/bbJ7HjwowJLXXcaB
         uztUDyg3IT6jc2HO2Kdk7w98cEq+CNLfK732EdC2pZzJuUhVzmlYzoj4Ma5TYoVO9cuy
         zD0QgF8ny19oI6fPb1xdqoih7NOn4/jilPi1mUkfSfxQsjz3rd+sF5kBd+hUXZd6vwGd
         A48Mus8vRjF+vYYUwT/wCbS98cQJ9GAut2tbntBS/+GTj2afRIv+5l6oX2eXwsnDFP3l
         ZNeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:cc:to:subject:content-transfer-encoding
         :mime-version:references:in-reply-to:user-agent:date
         :arc-authentication-results;
        bh=FG0+TGvH4ofgrMEz+blndjVVDu+LjoBO/R1e92LzQyg=;
        b=T0JMCDVL5PviVYrywGWUuJ/SiOnB8P0j0lMyvobukUT8pFqDEMdLxj6EFGKNxkVwIz
         6mQeW7g4UjCQby+cEveQen58ICsvbyTb0Km7gCzOYGa3hots8gSkVeJ+v/TxglRdsQxj
         u4/qMMBl/cyly/JCx5x/FZN2kAfhhCWe5R9BdJMhAe9YZ6T8+Vs0DCHIAM9rjNa9G8Vf
         tSKQcXGsEe2jXhoBhsv8fD2kRJq5j6Z9o8XQY2V1a/wVL/xdJtk6jAEQ+Xmn6C3KatnV
         5v8gTF7e20JX2xAucpi5SehQf45DH4+W16OlNRDpnJIbeyAUkQgzu5H61gCAuw953KEV
         cmqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jic23@jic23.retrosnub.co.uk designates 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 as permitted sender) smtp.mailfrom=jic23@jic23.retrosnub.co.uk
Return-Path: <jic23@jic23.retrosnub.co.uk>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id b62si6003wmd.3.2017.09.13.16.17.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 16:17:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of jic23@jic23.retrosnub.co.uk designates 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 as permitted sender) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jic23@jic23.retrosnub.co.uk designates 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 as permitted sender) smtp.mailfrom=jic23@jic23.retrosnub.co.uk
Received: from [172.20.188.179] (unknown [12.145.98.253])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 71FF640679;
	Thu, 14 Sep 2017 00:16:56 +0100 (BST)
Date: Wed, 13 Sep 2017 16:16:51 -0700
User-Agent: K-9 Mail for Android
In-Reply-To: <1505339903.8969.20.camel@perches.com>
References: <cover.1505291907.git.himshijain.hj@gmail.com> <2bc7a124ab925dd2c50aa8c778745d179777d50d.1505291907.git.himshijain.hj@gmail.com> <20170913180310.27cbf1b1@archlinux> <20170913185805.GB26390@kroah.com> <5e43ea4d-eab8-c4be-c5dc-2f862578d011@metafoo.de> <20170913212952.GD9288@kroah.com> <20170913214333.mcw4f24fkzndwh5k@mwanda> <1505339903.8969.20.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 1/2] include: linux: sysfs: Add __ATTR_NAMED macro
To: Joe Perches <joe@perches.com>,Dan Carpenter <dan.carpenter@oracle.com>,Greg KH <gregkh@linuxfoundation.org>
CC: Lars-Peter Clausen <lars@metafoo.de>,devel@driverdev.osuosl.org,daniel.baluta@gmail.com,Himanshi Jain <himshijain.hj@gmail.com>,Michael.Hennerich@analog.com,linux-iio@vger.kernel.org,linux-kernel@vger.kernel.org,nick.desaulniers@gmail.com,outreachy-kernel@googlegroups.com,pmeerw@pmeerw.net,knaack.h@gmx.de,Jonathan Cameron <jic23@kernel.org>
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Message-ID: <4DB672D4-AE6E-4CFF-8566-F62BFBAB62AB@jic23.retrosnub.co.uk>



On 13 September 2017 14:58:23 GMT-07:00, Joe Perches <joe@perches=2Ecom> w=
rote:
>On Thu, 2017-09-14 at 00:43 +0300, Dan Carpenter wrote:
>> He was exagerating a bit to call it a "static checker" warning=2E=2E=2E
>
>Not really=2E
>
>False positives and false negatives exist in just about
>every static
>checker=2E
>
>> It's just checkpatch=2Epl complaining about adding spaces around the -
>> operator=2E
>
>checkpatch is a brain-damaged by design static checker=2E
>regexes can only be sensitive to patterns, not compiled code=2E
>
>> The sysfs file has a hyphen in the middle=2E
>
>Another option would be to use an underscore instead=2E

Userspace ABI plus it really does mean subtract=2E  Used in description of=
 differential channels=2E
Most such IIO ABI is generated by the IIO core, this just comes up with co=
rner cases of the ABI=2E

Jonathan

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E

