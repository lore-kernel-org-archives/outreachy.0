X-GM-THRID: 6396335157434908672
X-Received: by 10.157.11.109 with SMTP id p42mr1904017otd.14.1489596594958;
        Wed, 15 Mar 2017 09:49:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.89.216 with SMTP id u24ls2936076otg.40.gmail; Wed, 15 Mar
 2017 09:49:54 -0700 (PDT)
X-Received: by 10.129.163.208 with SMTP id a199mr2172473ywh.135.1489596594549;
        Wed, 15 Mar 2017 09:49:54 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-io0-x242.google.com (mail-io0-x242.google.com. [2607:f8b0:4001:c06::242])
        by gmr-mx.google.com with ESMTPS id z191si104813itc.0.2017.03.15.09.49.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 09:49:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) client-ip=2607:f8b0:4001:c06::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x242.google.com with SMTP id f84so3554637ioj.0
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 09:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=PU5pwavkVj4RUxDUnC8G+hElGlu1yA+XbqtkQxeRWDQ=;
        b=UnPKzHQfOJAbE/Rp8z9PuDSpBJmfUMyk/bBPsoe1XJFOp+6yVLSgDIajzKyQNRrpGg
         kHi6Ty6IT4K99KEPwdpC9BpdegQCweaKxC6419M2/IwSKQGP8NuZGnKBiKVUXwUTIWMU
         V738EOXkd2EfgbXn7Qfiy5zsTVFb5RXlUSq1V85ZKumoQzroIEY0w5HKFJvinPgJYk/S
         9Cwdnjoi8AZRI5Xk+vEf9Kxi6h13h1NJL+cAqr6g4UNb2a9gfoDSEHN8BWTzUQuzv17e
         Xls6sIxwlx5nn58sJS9cLfZ8paybGu2EJ8iSIRh8cspDUG/xe0VUqDSolwIKjy/OYK4E
         Fqjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=PU5pwavkVj4RUxDUnC8G+hElGlu1yA+XbqtkQxeRWDQ=;
        b=ZD9gxGY7WrarCOIgZMUhw6Q4LrVLxWWniBtbW5H07ENO7KH6uAYMIEWjkSAUmygge/
         gvY5PPLln/W8fZRTW7o8x49c1YeSuw7wHjGk6L8ae7MjdSnkFO53WHSj+kRhr0PCHGLx
         w3CqfH69sqNoefq/nte4/pr/4AhHuFh62KccBOlohs+1tdLH2ORDgZmy/PIyreO263Ox
         NWB8KBJTXsamKGZGJ2gnIVkseeejO3E453rS+DfKYaAWw4KhDPwGwfnlRFnm0+ueLMYw
         bb2+wGBNnGHVPSfoXFA3i6sD5XoGEmHL/5PtlEcimUIhNYfam3YOp4MKQCo7fKa5lzpe
         4NCQ==
X-Gm-Message-State: AFeK/H2t48nDYmJl96yW9hL3JKUZ6GxZKZRXfyV05oxtNt8Pols+qXWRCR7EA6cEYqsdFUqhAcAnOPY+9u+7EA==
X-Received: by 10.107.27.207 with SMTP id b198mr5746216iob.218.1489596594058;
 Wed, 15 Mar 2017 09:49:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Wed, 15 Mar 2017 09:49:23 -0700 (PDT)
In-Reply-To: <1489583658-16337-1-git-send-email-gs051095@gmail.com>
References: <1489583658-16337-1-git-send-email-gs051095@gmail.com>
From: Gargi Sharma <gs051095@gmail.com>
Date: Wed, 15 Mar 2017 22:19:23 +0530
Message-ID: <CAOCi2DGm1AjsK5NcdJqy=1SyBsrkpfLN1Rk6iN26tSd2aNJoyw@mail.gmail.com>
Subject: Re: [PATCH v4] staging: vc04_services: Replace typedef with struct
To: outreachy-kernel@googlegroups.com
Cc: Greg KH <gregkh@linuxfoundation.org>, Gargi Sharma <gs051095@gmail.com>
Content-Type: text/plain; charset=UTF-8

Please ignore. A rebased version has been sent.

Thanks,
Gargi
On Wed, Mar 15, 2017 at 6:44 PM, Gargi Sharma <gs051095@gmail.com> wrote:
> Using typedef for a structure type and upper case struct names is not
> suggested in Linux kernel coding style guidelines. Hence, occurences
> of typedefs have been removed and struct names converted to lowercase
> in the file. Grep was also used to ensure that all occurence of the
> typedefs have been removed. The module compiles without any warnings
> or errors.
>
> Script 1:
> @r1@
> type T;
> @@
>
> typedef struct { ... } T;
>
> @script:python c1@
> T2;
> T << r1.T;
> @@
> if T[-2:] =="_T":
>   coccinelle.T2 = T[:-2].lower();
>   print T
> else:
>   coccinelle.T2=T.lower();
>
> @r2@
> type r1.T;
> identifier c1.T2;
> @@
> -typedef
> struct
> + T2
> { ... }
> -T
> ;
>
> @r3@
> type r1.T;
> identifier c1.T2;
> @@
> - T
> + struct T2
>
> Script 2:
> @@
> typedef VCHIQ_ELEMENT_T;
> @@
>
> (
> - VCHIQ_ELEMENT_T
> + struct vchiq_element
> )
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
> Changes in v4:
>         - Rebased and sent the patch.
> Changes in v3:
>         - Add changes to the changelog.
> Changes in v2:
>         - Convert the struct name to lowercase.
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c   | 8 ++++----
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h    | 4 ++--
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h | 2 +-
>  3 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index 1dc8627..03e1a13 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -406,7 +406,7 @@ static void close_delivered(USER_SERVICE_T *user_service)
>  }
>
>  struct vchiq_io_copy_callback_context {
> -       VCHIQ_ELEMENT_T *current_element;
> +       struct vchiq_element *current_element;
>         size_t current_element_offset;
>         unsigned long elements_to_go;
>         size_t current_offset;
> @@ -483,7 +483,7 @@ vchiq_ioc_copy_element_data(
>   **************************************************************************/
>  static VCHIQ_STATUS_T
>  vchiq_ioc_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
> -                       VCHIQ_ELEMENT_T *elements,
> +                       struct vchiq_element *elements,
>                         unsigned long count)
>  {
>         struct vchiq_io_copy_callback_context context;
> @@ -752,9 +752,9 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>
>                 if ((service != NULL) && (args.count <= MAX_ELEMENTS)) {
>                         /* Copy elements into kernel space */
> -                       VCHIQ_ELEMENT_T elements[MAX_ELEMENTS];
> +                       struct vchiq_element elements[MAX_ELEMENTS];
>                         if (copy_from_user(elements, args.elements,
> -                               args.count * sizeof(VCHIQ_ELEMENT_T)) == 0)
> +                               args.count * sizeof(struct vchiq_element)) == 0)
>                                 status = vchiq_ioc_queue_message
>                                         (args.handle,
>                                         elements, args.count);
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> index 377e8e4..0e27085 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> @@ -88,10 +88,10 @@ typedef struct vchiq_header_struct {
>         char data[0];           /* message */
>  } VCHIQ_HEADER_T;
>
> -typedef struct {
> +struct vchiq_element {
>         const void *data;
>         unsigned int size;
> -} VCHIQ_ELEMENT_T;
> +};
>
>  typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> index 6137ae9..9f85995 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> @@ -50,7 +50,7 @@ typedef struct {
>  typedef struct {
>         unsigned int handle;
>         unsigned int count;
> -       const VCHIQ_ELEMENT_T *elements;
> +       const struct vchiq_element *elements;
>  } VCHIQ_QUEUE_MESSAGE_T;
>
>  typedef struct {
> --
> 2.7.4
>

