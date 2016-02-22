X-GM-THRID: 6254088718103085056
X-Received: by 10.50.57.17 with SMTP id e17mr11316996igq.11.1456145194948;
        Mon, 22 Feb 2016 04:46:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.39.111 with SMTP id u102ls721216qgu.45.gmail; Mon, 22 Feb
 2016 04:46:34 -0800 (PST)
X-Received: by 10.31.160.209 with SMTP id j200mr26807230vke.6.1456145194414;
        Mon, 22 Feb 2016 04:46:34 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22c.google.com (mail-qg0-x22c.google.com. [2607:f8b0:400d:c04::22c])
        by gmr-mx.google.com with ESMTPS id t198si1289274ywe.3.2016.02.22.04.46.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 04:46:34 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) client-ip=2607:f8b0:400d:c04::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22c.google.com with SMTP id b67so109578848qgb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 04:46:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=PIkOCDfdJk2AMWP/8D1xI2dUgzxvpto0iX8gd9veJbY=;
        b=klrq2Zo8w0xUtU2RyLRVP6GH2BoV3AWm6d8k/reiJfxwnN62De5SKtcGouA3C6C3wg
         dUaZBA/yZX7iOuHdnCc5bPDnBeQZ3HtFk95fQcmBVTd4Noa/eknF80vRKgCLUdNXCRC+
         88yh6PFt9qQS9ttuRIik5rHLE/8N0JL01+MVkvDBPob/CHNAkGST8RKdqETl8n4eu/s6
         T+zGqK88/NhLKJNfPCNsUzU8dG1YmfrHn15pYtyF68zgjIqhOT5CZEfuS1VLYyw54tTQ
         5cW3ESeyqDiWGIKUh3qMsHZGxzI2YkIqmBjhs3vNlEIWeTtR6xc5k2c4YpkSWQVciCs/
         MdKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=PIkOCDfdJk2AMWP/8D1xI2dUgzxvpto0iX8gd9veJbY=;
        b=d0FfoBKx/V0dtkutInCudiQBDUe/4X7HqFO8ZFv2uqoOWQvw3QCp/b5YYyKFBGSlqq
         SQQ1eTVNsC5H2lGZed/GOELskjdmfLPyd3ewBW9XcLCasIRg2UrxwRxOu9hbig22hzUd
         F7gbAX0iyexC38F8JznC8TZtFS1jivCMCNGuyHekSQnyi1vnhYZb7EnQJe1HfBEDTWO8
         M9bZNUs93HgTc8NXJ0MmdmwZzD1ZWybMKiTBj3p6oBif9VytceLBgrdeeHXAPZWObhFj
         IOAom91fSSKkS8/8HuHJVUTaIEy99dPQs/6+Qo8z/VGGj8NeiTzJi4GMOH2OKPG8emJS
         aeLg==
X-Gm-Message-State: AG10YOR4vKjMGnrvnO7sDg2ZTy9a9HRL7r/oenb/KihPg1TfKDl5vBpsO1kqH6XJlS/drOCWo3YUEMjbZ1fc2A==
MIME-Version: 1.0
X-Received: by 10.140.23.81 with SMTP id 75mr33838697qgo.35.1456145194240;
 Mon, 22 Feb 2016 04:46:34 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Mon, 22 Feb 2016 04:46:34 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602220737380.2532@hadrien>
References: <20160222121811.GA21856@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1602220737380.2532@hadrien>
Date: Mon, 22 Feb 2016 18:16:34 +0530
Message-ID: <CA+5yK5H2xSGQApR6aB_M_hksW3u6QuHOWtt2EQwHur0Ru48y=g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Replace
 simple_strtoul with kstrtoul
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 22, 2016 at 6:08 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Mon, 22 Feb 2016, Amitoj Kaur Chawla wrote:
>
>> Replace obsolete simple_strtoul with kstrtoul.
>> The Coccinelle semantic patch used to make this change is as follows:
>
> Check on the use of temp.  In teh second case it is used after the call.
> I believe that the call is supposed to update the pointer, but you can
> check on that.
>
> julia
>

Checked. I think I'll have to revise the semantic patch to only look
for cases which have a NULL pointer as the middle argument since
otherwise I'm not updating the pointer with this change.

But that makes me wonder about the checkpatch warning for this, since
simple_strtoul is obsolete and should be replaced.

Amitoj

