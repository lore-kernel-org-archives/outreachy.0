X-GM-THRID: 6336586801480728576
X-Received: by 10.25.23.164 with SMTP id 36mr269235lfx.4.1476461190179;
        Fri, 14 Oct 2016 09:06:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.154.79 with SMTP id c76ls58891wme.23.canary; Fri, 14 Oct
 2016 09:06:29 -0700 (PDT)
X-Received: by 10.28.29.195 with SMTP id d186mr221606wmd.12.1476461189155;
        Fri, 14 Oct 2016 09:06:29 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id r128si18828wmf.3.2016.10.14.09.06.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 09:06:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com
Received: by mail-lf0-x243.google.com with SMTP id b75so18398250lfg.3
        for <outreachy-kernel@googlegroups.com>; Fri, 14 Oct 2016 09:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=vrF4vADU55xA9TtnIVQqVYF4rIxFeClVC1uQZR64jWs=;
        b=znj6eXqCtn/zNy+efjOSOG9qWMdRQ2fSel4y9g2R3BTGz0/QRBemeIFjh0kWU0ecHs
         hGOUnNY5AGXtJELDepae3xf3MMKgaVZ/Q2J34UgPkvIWF6WnhGiF3PuDsf7Jaxr3a6p1
         AvdAAC8NINR/35GlZ7CxvYbJ/HR/qKRySo8mJAAiaeReIrhEp0L4DxT9rh4HxwhLAyRt
         +41dVg9Ze+ZwYotDZGxURrC3eP15d+fQXEwoslKiKySUzBoKvVRX8noLODjS/vUAEkuX
         rVyubp8o7+4H301fn/avEobiCSGwusnuPwACirgDHdkSv9FAsacOZWNx96ZtsoiQaOpL
         6NOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=vrF4vADU55xA9TtnIVQqVYF4rIxFeClVC1uQZR64jWs=;
        b=W3nv1WSviY2lOo5OcWthAoblajnqbkuZCIgMQ+C/4tRph6ugnQSxHTFQS5JPt6wjhr
         1A95wOksx6yAZCpGjNVrVxfeIdeEolNBUA0rU21Y9OBZ3H5PeQwHs7lAceG3LVniRiDQ
         yQRhorYOYcC2J4PzYuNPTlbc2luHs7fX+gjEvuy3/SOKtJQ3nO4X/SuVPm6I8vJyUNev
         l+l2NkjMnONA9t4/eKsTS5OAZ8vfrk++Mr4anoyDRijgL1T8n+k4ZNfW4lsz63uZNVDc
         s2wx8OmZU39XCpk2gQDk96Hr2Hv8CuzOZdhUwWC0TJefUerWSJsWLuXmIbrca6EwdKm2
         +U9A==
X-Gm-Message-State: AA6/9Rlb8CwAbOfrDlsGSoMXkd5BrX4ySrmTP9Xah7Z/UKAFUKfFLewSpK+ithMXUioND9Qr2tWGjWkzMxezcA==
X-Received: by 10.25.74.143 with SMTP id x137mr4098311lfa.10.1476461188545;
 Fri, 14 Oct 2016 09:06:28 -0700 (PDT)
MIME-Version: 1.0
Sender: daniel.baluta@gmail.com
Received: by 10.25.149.14 with HTTP; Fri, 14 Oct 2016 09:06:27 -0700 (PDT)
In-Reply-To: <20161011172410.GA6773@localhost>
References: <20161001195259.GB12284@d830.WORKGROUP> <20161009231959.GA5324@localhost>
 <4fdf08c2-821a-a6e4-a9be-c2d7e528f2e4@intel.com> <20161011172410.GA6773@localhost>
From: Daniel Baluta <daniel.baluta@intel.com>
Date: Fri, 14 Oct 2016 19:06:27 +0300
X-Google-Sender-Auth: jBfC4WBOiVZ8GTlrcVp6JtT4FGA
Message-ID: <CAEnQRZDGEeN0h1uJBZTDcnubAAgasfB=k9anFGzubSdJsW92sw@mail.gmail.com>
Subject: Re: [Outreachy kernel] IIO Experiment #1 Build Dummy Help
To: Elizabeth Ferdman <gnudevliz@gmail.com>
Cc: Daniel Baluta <daniel.baluta@intel.com>, Alison Schofield <amsfield22@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 11, 2016 at 8:24 PM, Elizabeth Ferdman <gnudevliz@gmail.com> wrote:
> On Tue, Oct 11, 2016 at 11:44:04AM +0300, Daniel Baluta wrote:
>>
>>
>> On 10.10.2016 02:19, Elizabeth Ferdman wrote:
>> >On Sat, Oct 01, 2016 at 12:52:59PM -0700, Alison Schofield wrote:
>> >>If you have questions about building the modules in IIO Experimenting
>> >>Task #1, please post here.
>> >>
>> >>If you can help those who are having troubles, please post that here
>> >>also.
>> >>
>> >I'm getting errors after running
>> >$ make drivers/iio/dummy/iio_dummy_evgen.ko
>> >
>> >Output:
>> >------------------------------------------------------------
>> >CHK     include/config/kernel.release
>> >CHK     include/generated/uapi/linux/version.h
>> >CHK     include/generated/utsrelease.h
>> >CHK     include/generated/bounds.h
>> >CHK     include/generated/timeconst.h
>> >CHK     include/generated/asm-offsets.h
>> >CALL    scripts/checksyscalls.sh
>> >MODPOST 3015 modules
>> >
>> >WARNING: could not open
>> >drivers/staging/lustre/lustre/llite/llite_close.c:
>> >No such file or directory
>> >
>> >WARNING: could not open
>> >drivers/staging/lustre/lustre/obdclass/linux/linux-obdo.c:
>> >No such file or directory
>> >
>> >ERROR: "ftrace_graph_ret_addr" [arch/x86/oprofile/oprofile.ko]
>> >undefined!
>> >
>> >scripts/Makefile.modpost:91: recipe for target '__modpost' failed
>> >make[1]: *** [__modpost] Error 1
>> >Makefile:1643: recipe for target
>> >'drivers/iio/dummy/iio_dummy_evgen.ko' failed
>> >make: *** [drivers/iio/dummy/iio_dummy_evgen.ko] Error 2
>> >----------------------------------------------------------------
>> >
>> >I have already enabled the 4 necessary config options in menuconfig.
>> >Any ideas?
>> >thanks,
>> >liz
>> >
>> >
>>
>>
>> Hi Liz,
>>
>> Sorry for the late reply. Could you try to update your tree? It seems
>> that was a problem similar with this few days ago.
>>
>> http://www.gossamer-threads.com/lists/linux/kernel/2538847?do=post_view_threaded#2538847
>>
>> Daniel.
>>
> Hey Daniel,
> Thanks for the reply. I did get fetch origin, but I'm still getting the
> same error, plus some more. I pasted the log here:
> http://pastebin.com/WXL5Vxt8
>
> Just to clarify I've been following the tutorial and I chose the 5
> config options in menuconfig. I also mounted configfs.


For these:

ERROR: "iio_register_sw_device_type" [drivers/iio/dummy/iio_dummy.ko] undefined!
ERROR: "iio_unregister_sw_device_type"
[drivers/iio/dummy/iio_dummy.ko] undefined!

You need to enable CONFIG_IIO_SW_DEVICE.

thanks,
Daniel.

