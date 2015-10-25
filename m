X-GM-THRID: 6208177008118071296
X-Received: by 10.67.4.135 with SMTP id ce7mr11831226pad.20.1445782300744;
        Sun, 25 Oct 2015 07:11:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.202 with SMTP id f193ls385081ioe.60.gmail; Sun, 25 Oct
 2015 07:11:40 -0700 (PDT)
X-Received: by 10.50.110.6 with SMTP id hw6mr11819962igb.7.1445782300245;
        Sun, 25 Oct 2015 07:11:40 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x229.google.com (mail-qg0-x229.google.com. [2607:f8b0:400d:c04::229])
        by gmr-mx.google.com with ESMTPS id t64si1964421ywd.2.2015.10.25.07.11.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 07:11:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) client-ip=2607:f8b0:400d:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x229.google.com with SMTP id o38so101904581qge.0
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 07:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=PLsyafuiPxYRLb31BcaAqsjYPs0Gdh5xkFC7incDDQw=;
        b=OQdwbyf8sdBDpSR5jVMjRKBW2WNuGc2wPnCSWmHW/xScZC7FWWX0cto69IMbOFxJeu
         bqPA0cHFB9O8chTDlhtFjBO3ncYH1ET46i5O2IBn7+b+xk9TBfXHBi6DjdiY3pHr7MPW
         TeuFBfJ4w50vgteGtBs9ZQvjRAI3B5CCguutFu3Lauu0OHcLJe9oF+kJAN1c6rbqxTWL
         Dqft3ikoez9RPnRsl/SBiTvz3zmfETH+ptg9WJI0DAfCrBDp7d1pNi8o9gXJVJy1xMhK
         YfUJPDUNXPA+GhKrc7zy29hYQCE70fjV9dI8sY8LtNNpGLi+twXOuIaSDWa8iRvGynSd
         9lvQ==
MIME-Version: 1.0
X-Received: by 10.140.39.199 with SMTP id v65mr13103613qgv.34.1445782300031;
 Sun, 25 Oct 2015 07:11:40 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Sun, 25 Oct 2015 07:11:39 -0700 (PDT)
In-Reply-To: <20151025014856.GA536@kroah.com>
References: <cover.1445453573.git.amitoj1606@gmail.com>
	<7c9a1c8af81dc6676b31d2ad2e8d9de2df9dfbd8.1445453573.git.amitoj1606@gmail.com>
	<20151025014856.GA536@kroah.com>
Date: Sun, 25 Oct 2015 19:41:39 +0530
Message-ID: <CA+5yK5E2xBBETtxA6Mj9rP4mSdu8rkWYZ+3VeJ+NSY59_Z+GxQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: lustre: lmv: Fix endian
 sparse warnings
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 25, 2015 at 7:18 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Thu, Oct 22, 2015 at 12:31:32AM +0530, Amitoj Kaur Chawla wrote:
>> Fix bug found using sparse which generates the following warning:
>>
>> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2422:25: warning:
>> incorrect type in assignment (different base types)
>> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2422:25: expected unsigned
>> int [unsigned] [usertype] mea_magic
>> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2422:25: got restricted
>> __le32 [usertype] <noident>
>> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2423:25: warning:
>> incorrect type in assignment (different base types)
>> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2423:25: expected unsigned
>> int [unsigned] [usertype] mea_count
>> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2423:25: got restricted
>> __le32 [usertype] <noident>
>> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2424:26: warning:
>> incorrect type in assignment (different base types)
>> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2424:26: expected unsigned
>> int [unsigned] [usertype] mea_master
>> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2424:26: got restricted
>> __le32 [usertype] <noident>
>> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2467:25: warning: cast to
>> restricted __le32
>> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2477:30: warning: cast to
>> restricted __le32
>> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2478:31: warning: cast to
>> restricted __le32
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/lmv/lmv_obd.c | 12 ++++++------
>>  1 file changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/lmv/lmv_obd.c b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
>> index 7e6a060..8d90f19 100644
>> --- a/drivers/staging/lustre/lustre/lmv/lmv_obd.c
>> +++ b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
>> @@ -2419,9 +2419,9 @@ static int lmv_packmd(struct obd_export *exp, struct lov_mds_md **lmmp,
>>           lsmp->mea_magic != MEA_MAGIC_ALL_CHARS)
>>               return -EINVAL;
>>
>> -     meap->mea_magic = cpu_to_le32(lsmp->mea_magic);
>> -     meap->mea_count = cpu_to_le32(lsmp->mea_count);
>> -     meap->mea_master = cpu_to_le32(lsmp->mea_master);
>> +     meap->mea_magic = lsmp->mea_magic;
>> +     meap->mea_count = lsmp->mea_count;
>> +     meap->mea_master = lsmp->mea_master;
>
> Yes, deleting the calls will remove the warning, but maybe this isn't
> the correct fix?  I think you just broke the code :(
>
> There is a better fix here, a "correct" one, can you think of it?
>
> thanks,
>
> greg k-h


Umm, I can only think of changing the definition instead.

-- 
Amitoj

