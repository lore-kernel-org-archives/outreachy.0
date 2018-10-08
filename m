X-GM-THRID: 6609200682225369088
X-Received: by 2002:a37:d453:: with SMTP id l80-v6mr16818342qki.0.1538995985711;
        Mon, 08 Oct 2018 03:53:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:38e1:: with SMTP id k88-v6ls48051qte.4.gmail; Mon, 08
 Oct 2018 03:53:05 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60BGxg1cAYofVDTt9eUmv/BySvTPR3jAiBep1AJE8OE24tyijLiSz+ERJF/hzPnKvxevCIZ
X-Received: by 2002:ac8:29c3:: with SMTP id 3-v6mr16896714qtt.6.1538995985090;
        Mon, 08 Oct 2018 03:53:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538995985; cv=none;
        d=google.com; s=arc-20160816;
        b=IYsmV3gYlRgJUW3D0ywQ0VzsocKOcAfXmCpmC5eV1v2TAJqtJq2m3/Uwr6FcetsnUx
         ZzZ6QDEjX6czQMOPJi9tcyByeyMEFr1O7F20ZFdjcBwKI7pzo2wsDmdIEzMApU3AaQO2
         HfsfdWeNBv3oyX5dKuoRASC3jZlcK5E5z5MzvnmOa0lLZVkFNQM/+LI2WV54lkpROS+7
         1ysF4J87WvHgYpwA7G+14uDvBvC11IOa/5mlr0iwGhtCajwOtPr1ByYza94tLYs2uz9V
         WNKG+I/7X5yv+pwMQpRSdIguHu3VNu4If82K69HHkV6jfUjksXSzj8OX97gecfreKM0I
         265A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject;
        bh=jC0YAj1wzqRpSJNVelHnW04Nh3Y0CbRw7hAPIZlYtjE=;
        b=UtVg8VPfkdDZm884H2d7ja84UfCOgxQKEyJaHp7HkQr0flpAfdFUandjlsN662c8tN
         oc+QlOeTNgfsygyzjy0uarOOEFmKeK+jlxTFi1RZy2fsQAfB3fxWzKdm5t30C7buDxPu
         /gA47LpVmAOoe8P1zwIK74HLDFjNLfLnfQ1wRRsFWc+TG2uNpQymRjaibJjMZIA/A461
         1HC1F8FzsJ9UOyOouugerbtYJ9sn0F0tSuvJSqXsZiVaPL6gpia+q2ivd/Q9itfY3+lo
         i0kIT07nFIiOzvpboLbJUz9ipAim6TOvyHlNhZRosw8ZEJ50gi4N+V48A2jYrSd30y0d
         T66Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 173.203.187.112 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) smtp.mailfrom=abbotti@mev.co.uk
Return-Path: <abbotti@mev.co.uk>
Received: from smtp112.iad3a.emailsrvr.com (smtp112.iad3a.emailsrvr.com. [173.203.187.112])
        by gmr-mx.google.com with ESMTPS id x41-v6si814631qth.2.2018.10.08.03.53.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 03:53:05 -0700 (PDT)
Received-SPF: neutral (google.com: 173.203.187.112 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) client-ip=173.203.187.112;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 173.203.187.112 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) smtp.mailfrom=abbotti@mev.co.uk
Received: from smtp7.relay.iad3a.emailsrvr.com (localhost [127.0.0.1])
	by smtp7.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id CCCD95208;
	Mon,  8 Oct 2018 06:53:04 -0400 (EDT)
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp7.relay.iad3a.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 1E66E5307;
	Mon,  8 Oct 2018 06:53:03 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.173] (remote.quintadena.com [81.133.34.160])
	(using TLSv1.2 with cipher DHE-RSA-AES128-SHA)
	by 0.0.0.0:465 (trex/5.7.12);
	Mon, 08 Oct 2018 06:53:04 -0400
Subject: Re: [Outreachy kernel][PATCH v7] staging:comedi:comedi_pci.h Prefer a
 maximum 75 chars per line
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>, bhanusreemahesh@gmail.com
Cc: outreachy-kernel@googlegroups.com, hsweeten@visionengravers.com,
 Greg KH <gregkh@linuxfoundation.org>
References: <1d352f7b-f146-73af-23bc-5301c9cd035a@gmail.com>
 <62c732c8-8f6d-6a2c-3256-ba3386444f76@mev.co.uk>
 <f8152fce-71dc-6771-a33e-bc9d95fcf46a@gmail.com>
 <CAK-LDb+bPph5Vd++WV18jMRAr75HO+qJcRk8a2L-jvmBGmDVFg@mail.gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <fc5d5be6-6b37-91ec-9364-e12bb8d9dbfb@mev.co.uk>
Date: Mon, 8 Oct 2018 11:53:02 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAK-LDb+bPph5Vd++WV18jMRAr75HO+qJcRk8a2L-jvmBGmDVFg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 08/10/2018 11:40, Vaishali Thakkar wrote:
> Adding Greg, Ian and Hartley

Thanks.

> On Mon, Oct 8, 2018 at 3:46 PM Bhanusree <bhanusreemahesh@gmail.com> wrote:
>>
> 
> Bhanusree,
> 
> When you reply to email, keep everyone in the loop. Use reply-all
> instead of replying in the mailing list only.
> 
>>
>> On Monday 08 October 2018 03:39 PM, Ian Abbott wrote:
>>> On 07/10/18 12:32, Bhanusree wrote:
>>>> comedi_pci_auto_config() function prototype is exceeding more than
>>>> 75 characters per line. Adjusted to 75 chars to improve readability
>>>>
>>>> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
>>>
>>> I've never heard of that preference for function prototypes to not
>>> exceed 75 columns.  Where does it come from?
>> It is the warning given by checkpatch. Earlier it used to show if
>> characters exceeded 80 per line. But now when checkpatch is applied it
>> is showing the following warning.
>>
>> "Possible unwrapped commit description (prefer a maximum 75 chars per line)"

Bhanusree,

I see your misunderstanding.  That checkpatch warning is referring to 
the "commit description" (i.e. the descriptive text in the email about 
the purpose of the patch), not to the source code.  For source code, the 
strongly preferred limit is 80 columns.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-

