X-GM-THRID: 6469789511840694272
X-Received: by 10.157.4.3 with SMTP id 3mr822298otc.135.1506415648796;
        Tue, 26 Sep 2017 01:47:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.225 with SMTP id 88ls507032ots.26.gmail; Tue, 26 Sep
 2017 01:47:28 -0700 (PDT)
X-Received: by 10.202.224.8 with SMTP id x8mr5817501oig.31.1506415648067;
        Tue, 26 Sep 2017 01:47:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506415648; cv=none;
        d=google.com; s=arc-20160816;
        b=I5/SV0BHwHg75XKxeyqSTgIjZeb7I0c+GH6a8UPAxFnGaZami9guE6tXUXIadRD8mO
         8Bz7ZBmZ0caJ/IeI/UmxTqMHQMN5n/OQF35OC9XT54LTQpW28NdEPJELs/FCEegmXqLi
         UEQFz1gpZOHhri1ZAZYtpOk38GbUTJKJyjFJecMIeMmwYYcdkgZtWKVT1KyR4AiR6tvn
         zk7OUonmBVJzMcZm6bHo6AGOCcPMMYvSrElEJZT49nDRimPd5r2vgLBo6GAToiq25M+N
         DuKHydata8emBOd3GaA/n3J7/UicHpM/Z4LQ2nlpzKkeEIg3p4VEGBvMF/hwywmUttNE
         xPMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to:sender
         :mime-version:dkim-signature:arc-authentication-results;
        bh=JBbzWEt3iQ3iKxhcFdf2Qm0tpo7aN0nJrQ5yp8TpycE=;
        b=xiUkNO/N4uvyoomH05IKysi+1f0kKV5MlgOtPoIYSah8/wwi4BOeZlbeHGjaf15IZC
         mwYF+m6lazOapmHsYVWIbQKWTfsDKKE8V5WYlR7RhMsAb/KLA0A5xMyEiG/P1AN5rLt8
         nMPrhlXnDWvrm/G1xW1B+9uYT+/8XmvZa/kqRW7Lp0AIs2QjsQAGLbC/lK7WkT9zxRYV
         TIDw2g7D/Ozon9kMD1draDOk1ehTCKsgcueneKKApmJE3hHjdpjFx/+XIzDw4D7AgRL6
         Kg+jpzP2o6eco8qq0ikjYP0Nd+8c7/3EXTYbizHew2yYKDvIfc35+od0iK74KAjVyC2h
         Rd+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=YTWew9zW;
       spf=neutral (google.com: 2607:f8b0:4001:c0b::241 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Return-Path: <daniel.vetter@ffwll.ch>
Received: from mail-it0-x241.google.com (mail-it0-x241.google.com. [2607:f8b0:4001:c0b::241])
        by gmr-mx.google.com with ESMTPS id z207si387262ywz.6.2017.09.26.01.47.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 01:47:27 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4001:c0b::241 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) client-ip=2607:f8b0:4001:c0b::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=YTWew9zW;
       spf=neutral (google.com: 2607:f8b0:4001:c0b::241 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Received: by mail-it0-x241.google.com with SMTP id o200so2076268itg.0
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 01:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=JBbzWEt3iQ3iKxhcFdf2Qm0tpo7aN0nJrQ5yp8TpycE=;
        b=YTWew9zWJQY506u0poNRJaugpiS99qSDKz2JznRajeU+CA7fwFPrEwSmG7Pk1T9+Mo
         XQ+69YbxfqB//yZ+B0pJsVY4LLdihuTwW6To1xZf0mdAgX+JaA+0UJ+qG46EyoGV7yEM
         TZ3LVzZMHVnjyZ4sIG+TezXW1k1JqEFFNMMyA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=JBbzWEt3iQ3iKxhcFdf2Qm0tpo7aN0nJrQ5yp8TpycE=;
        b=eYRk0R3gzaWzlkTBgzTCZ2mTwwV/cRIFuEP+c2sn47DcO/vsewDF4/XpfEUfms26mf
         PDTBCUoqvX3pqdLaeMmD/b8hAtrp4o9RqJh5EQUGkpvGSiiZe7gCA6yFfKjLW2BfaFQe
         wRHZPvIdtZzf98SgjLLUO2GW8sF2QiJXSxjWyYcU2yJQTH8Gj7DPvFSzp6Vo8DnFQbER
         4Io+qMQiVPVHO6VN0R4nONOYjL/sPOjLR7E4SPFECeFhaEBARihuWNFxSF8M2wDeXkbq
         E9EaUD0BOoaDTeNDQ6ANO1EgW+ZqoT0yDMAijRrq/FBeGwr1w4hlDpCQHs2uJDh7EgQY
         Fg8g==
X-Gm-Message-State: AHPjjUiPR0Ui53isYJqD4Io0f7Fz9+IaBXKJ76mCVrnqgBtCs4bZiwth
	yZ1RLtxPYQEjxXlStERQDMEgXMggOBYscQpLPBaukw==
X-Google-Smtp-Source: AOwi7QALQ9gr44MgxMw7jmuWr/NRV+82tHEA5ielglP9R1jxDqytvVIcxof9UWMbft3Hmaus8Z2ovhvKNfFaofExjjI=
X-Received: by 10.36.107.146 with SMTP id v140mr4771212itc.95.1506415647545;
 Tue, 26 Sep 2017 01:47:27 -0700 (PDT)
MIME-Version: 1.0
Sender: daniel.vetter@ffwll.ch
Received: by 10.79.196.218 with HTTP; Tue, 26 Sep 2017 01:47:27 -0700 (PDT)
X-Originating-IP: [2a02:168:5635:0:39d2:f87e:2033:9f6]
In-Reply-To: <alpine.DEB.2.20.1709261036530.2925@hadrien>
References: <20170925184728.GA8861@aishwarya> <20170926082047.eqsd2lslpqp4pi5f@phenom.ffwll.local>
 <alpine.DEB.2.20.1709261036530.2925@hadrien>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 26 Sep 2017 10:47:27 +0200
X-Google-Sender-Auth: sz5bJw6X3mRR_4i05tZvkC1844A
Message-ID: <CAKMK7uHz-07SgntJvsYkiAE1GH_ZYO6-bX=305EdhLa+y0=XBw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] drm/gem: use new idr deletion
 interface to cleanup drm_gem_handle_delete()
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Aishwarya Pant <aishpant@gmail.com>, Daniel Vetter <daniel.vetter@intel.com>, 
	Jani Nikula <jani.nikula@linux.intel.com>, Sean Paul <seanpaul@chromium.org>, 
	David Airlie <airlied@linux.ie>, dri-devel <dri-devel@lists.freedesktop.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, Sep 26, 2017 at 10:38 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Tue, 26 Sep 2017, Daniel Vetter wrote:
>
>> On Tue, Sep 26, 2017 at 12:17:28AM +0530, Aishwarya Pant wrote:
>> > The IDR deletion interface now returns the deleted entry or NULL if it was not
>> > present. So we don't have to do the extra work of checking if we have a
>> > reference on the drm_gem_object, this can be handled by checking the return
>> > value from idr_remove() and the extra locks can be dropped.
>> >
>> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
>>
>> Haneen is already working on this task, with the patch just merged. Please
>> coordinate with mentors (me or Sean Paul) before starting on something to
>> avoid such clashes in the future.
>>
>> Note also that some todo items are just ideas, and need confirmation with
>> relevant maintainers first.
>
> Not sure where the mixup happened, but anyone who starts on a project
> specific task should note that on the outreachy kernel wiki and before
> starting on a project specific task one should check that no one is
> working on it.  If someone started some time ago, and the code doesn't
> seem to have changed, ask the person who claimed the task or the mentor.

Hm, the dri-devel tasks aren't on the wiki, but in the kernel sources.
Where should we put the scratch-pad to avoid such conflicts in the
future? E.g. the IIO subsytems has it's task on the wiki, where this
works much better.
-Daniel

>
> thanks,
>
> julia
>
>>
>> Thanks, Daniel
>> > ---
>> >  drivers/gpu/drm/drm_gem.c | 21 ++-------------------
>> >  1 file changed, 2 insertions(+), 19 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
>> > index c55f338..f62757a 100644
>> > --- a/drivers/gpu/drm/drm_gem.c
>> > +++ b/drivers/gpu/drm/drm_gem.c
>> > @@ -282,29 +282,12 @@ drm_gem_handle_delete(struct drm_file *filp, u32 handle)
>> >  {
>> >     struct drm_gem_object *obj;
>> >
>> > -   /* This is gross. The idr system doesn't let us try a delete and
>> > -    * return an error code.  It just spews if you fail at deleting.
>> > -    * So, we have to grab a lock around finding the object and then
>> > -    * doing the delete on it and dropping the refcount, or the user
>> > -    * could race us to double-decrement the refcount and cause a
>> > -    * use-after-free later.  Given the frequency of our handle lookups,
>> > -    * we may want to use ida for number allocation and a hash table
>> > -    * for the pointers, anyway.
>> > -    */
>> >     spin_lock(&filp->table_lock);
>> > -
>> > -   /* Check if we currently have a reference on the object */
>> > -   obj = idr_replace(&filp->object_idr, NULL, handle);
>> > -   spin_unlock(&filp->table_lock);
>> > -   if (IS_ERR_OR_NULL(obj))
>> > +   obj = idr_remove(&filp->object_idr, handle);
>> > +   if (!obj)
>> >             return -EINVAL;
>> > -
>> >     /* Release driver's reference and decrement refcount. */
>> >     drm_gem_object_release_handle(handle, obj, filp);
>> > -
>> > -   /* And finally make the handle available for future allocations. */
>> > -   spin_lock(&filp->table_lock);
>> > -   idr_remove(&filp->object_idr, handle);
>> >     spin_unlock(&filp->table_lock);
>> >
>> >     return 0;
>> > --
>> > 2.7.4
>> >
>> > --
>> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> > To post to this group, send email to outreachy-kernel@googlegroups.com.
>> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170925184728.GA8861%40aishwarya.
>> > For more options, visit https://groups.google.com/d/optout.
>>
>> --
>> Daniel Vetter
>> Software Engineer, Intel Corporation
>> http://blog.ffwll.ch
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170926082047.eqsd2lslpqp4pi5f%40phenom.ffwll.local.
>> For more options, visit https://groups.google.com/d/optout.
>>



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

