X-GM-THRID: 6211478013725376512
X-Received: by 10.50.77.110 with SMTP id r14mr132451igw.9.1446236826224;
        Fri, 30 Oct 2015 13:27:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.136 with SMTP id m8ls1143625qge.72.gmail; Fri, 30 Oct
 2015 13:27:05 -0700 (PDT)
X-Received: by 10.129.92.198 with SMTP id q189mr8211119ywb.40.1446236825780;
        Fri, 30 Oct 2015 13:27:05 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x232.google.com (mail-qg0-x232.google.com. [2607:f8b0:400d:c04::232])
        by gmr-mx.google.com with ESMTPS id z62si642694ywb.4.2015.10.30.13.27.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 13:27:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::232 as permitted sender) client-ip=2607:f8b0:400d:c04::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x232.google.com with SMTP id o38so71853806qge.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 13:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Thv7/Ura1KKBc7LsvdTEKDNPrcypPX6qGQBsz0JcB5I=;
        b=fF8iKHARJ5fsoZxiIcJQWpbKs9VdKCmzCPiC3aP7FRG8kGyGLFNs5lgg89MhmyfUeA
         Kqz3DnkcniK8sV2iJFmkNSbXfJ/qOf5FirMUBXhSGOqTtJLkglukyFq28O7k+W5gzx0e
         1mZ/g4AJT42qN39yY84BYr1aVBSdLEc2TNllBMe8k71Ys891SWI6Dprz3Rvxq2OJSKuQ
         2bHnkmkGqeb1VpGhpMyYjaS1blnlgcmPR2snhhB+SPxZAzn3hJaXbihCd2DEog6I3+CE
         dS15oH5e1A41EidkeN82LrJtYgzZAusqv1lx1Y6TwPMvo8RBB1TycUgpSyghzG5uRdDw
         TiUg==
MIME-Version: 1.0
X-Received: by 10.140.177.67 with SMTP id x64mr6378230qhx.74.1446236825617;
 Fri, 30 Oct 2015 13:27:05 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Fri, 30 Oct 2015 13:27:05 -0700 (PDT)
In-Reply-To: <3734328.UQFFTVvvm5@wuerfel>
References: <20151030162658.GA14714@amitoj-Inspiron-3542>
	<3734328.UQFFTVvvm5@wuerfel>
Date: Sat, 31 Oct 2015 01:57:05 +0530
Message-ID: <CA+5yK5GgKgadBcQx8P_scxBwzL=jTGjf_Jq94vdbt29Q78yDbw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: llite: Add __user annotations
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 31, 2015 at 1:10 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Friday 30 October 2015 21:56:58 Amitoj Kaur Chawla wrote:
>> @@ -2245,7 +2245,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>>                 struct file *file2;
>>                 struct lustre_swap_layouts lsl;
>>
>> -               if (copy_from_user(&lsl, (char *)arg,
>> +               if (copy_from_user(&lsl, (char __user *)arg,
>>                                        sizeof(struct lustre_swap_layouts)))
>>                         return -EFAULT;
>>
>>
>
> The same comment that I made for "staging: lustre: llite: dir: Add __user
> annotations" also applies here: when you add a temporary variable
> at the start of the function, you can replace all those casts from
> arg to various function calls with just one cast.
>
>         Arnd

Okay, then I'll redo the whole thing and send it as one patch.

-- 
Amitoj

