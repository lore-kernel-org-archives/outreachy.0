X-GM-THRID: 6330207690176856064
X-Received: by 10.237.36.113 with SMTP id s46mr2638572qtc.18.1473870465622;
        Wed, 14 Sep 2016 09:27:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.21.49 with SMTP id u46ls1449369otf.43.gmail; Wed, 14 Sep
 2016 09:27:45 -0700 (PDT)
X-Received: by 10.237.51.195 with SMTP id v61mr2556176qtd.8.1473870465227;
        Wed, 14 Sep 2016 09:27:45 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-yw0-x243.google.com (mail-yw0-x243.google.com. [2607:f8b0:4002:c05::243])
        by gmr-mx.google.com with ESMTPS id m82si488915ywm.2.2016.09.14.09.27.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 09:27:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) client-ip=2607:f8b0:4002:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x243.google.com with SMTP id g192so1425556ywh.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 09:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=rfNF7D81yicv57/+cTc4h+bn+IyiRkZ1OkNnesFyJIY=;
        b=RauvIPx7XrTIWV1gvrf6xPPB78vBX6ocPKqWsXHEUkgnpweYq8vFfzdru9TmzFItff
         vRo3xWPphwLYt6DKilhKUT5ObDuU41p9iavbkC2vTDoi92pzjmoRQBDlXy/1dWbaWeUy
         olWUdUySCHA6g0KvCeCnyarN6eJHWw26APcAALnvRXvVPAwWdgCvrDOmHwQzd1K9SzAv
         2Yj3fj5OrpbnJPuJlnFj2FcznVXl6iWWocSoHQEiv5IWTdAFhEAy/zLBVN1A4+gJVGF2
         ijVjZmTNI7acVPEY9bzTRprJtB5Jeu9OY6DaYiA99xYQxLI5NsL+RGaIYiYpiYI+4Ifo
         qU+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=rfNF7D81yicv57/+cTc4h+bn+IyiRkZ1OkNnesFyJIY=;
        b=arhE50Y7JQWzfy2s/tIC5UzshGfpLbdJTDXKp88eCKojj051vXz7WKxLqJMTw/VRE4
         reWUSfaipgJdpNLBzyXl4ihQ7OeNPp5uaRJ6y3I+251D2QFRnV5gZBp/z56NtslYfcoU
         mxoGF147jBxpivIh6RAy6VbMTMv6Lft2YE7h0FBgrJVU1MwqRq6K5YJjKsE+SSYKno4R
         ojks1mwVe5G8wIzlaAjS7Hz8ThFDzfKKiN2Z3s2mxgYw6oPkCD/Q6wQVJMfgB1AAiE/C
         smYOzVgNU5XuZcMuvtcmrm/B7Pa4wRjr/z73HYa3X+M3Y8fJnelGnvh092kMUuvH3ZHl
         7S5A==
X-Gm-Message-State: AE9vXwOgz7orcutpMFpxQ+bQMR0WWihITVtxsXIvcCv4ksvpd7Vequt9Ax5BsCEO0kTZqHitqeHgj+6s0cAuLw==
X-Received: by 10.13.208.133 with SMTP id s127mr3900288ywd.250.1473870464984;
 Wed, 14 Sep 2016 09:27:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.81.3 with HTTP; Wed, 14 Sep 2016 09:27:44 -0700 (PDT)
In-Reply-To: <20160914151712.GA9806@life-desktop>
References: <20160914151712.GA9806@life-desktop>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Wed, 14 Sep 2016 21:57:44 +0530
Message-ID: <CAK-LDbKFCGs0_uXzoK1X9E9HW8Z7xgphQVZnM39jybzb++sdnA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] drivers: bluetooth: bfusb: Line
 over 80 characters in conditional stataments
To: Anchal Jain <anchalj109@gmail.com>
Cc: Marcel Holtmann <marcel@holtmann.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, gustavo@padovan.org
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 14, 2016 at 8:48 PM, Anchal Jain <anchalj109@gmail.com> wrote:
> This patch remove the warning of checkpatch.pl Line over 80 characters.
> to remove this warning break the conditional statements into small chunks.

Hi,

Good try. But few things to note here:

1. For the Outreachy, it is advised to send patches in the drivers/staging only.
2. Subject of this patch is too log. May be you can say something like
    'Bluetooth: bfusb: Fix line over 80 characters'
3. to -> To

> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/bluetooth/bfusb.c | 27 ++++++++++++++++++---------
>  1 file changed, 18 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/bluetooth/bfusb.c b/drivers/bluetooth/bfusb.c
> index 3bf4ec6..1c2e16d 100644
> --- a/drivers/bluetooth/bfusb.c
> +++ b/drivers/bluetooth/bfusb.c
> @@ -148,7 +148,7 @@ static int bfusb_send_bulk(struct bfusb_data *data, struct sk_buff *skb)
>
>         err = usb_submit_urb(urb, GFP_ATOMIC);
>         if (err) {
> -               BT_ERR("%s bulk tx submit failed urb %p err %d",
> +               BT_ERR("%s bulk tx submit failed urb %p err %d",
>                                         data->hdev->name, urb, err);
>                 skb_unlink(skb, &data->pending_q);
>                 usb_free_urb(urb);
> @@ -289,30 +289,38 @@ static inline int bfusb_recv_block(struct bfusb_data *data, int hdr, unsigned ch
>                 switch (pkt_type) {
>                 case HCI_EVENT_PKT:
>                         if (len >= HCI_EVENT_HDR_SIZE) {
> -                               struct hci_event_hdr *hdr = (struct hci_event_hdr *) buf;
> +                               struct hci_event_hdr *hdr = (struct
> +                                                            hci_event_hdr *)
> +                                                            buf;

Don't you think this looks ugly after the change?

>                                 pkt_len = HCI_EVENT_HDR_SIZE + hdr->plen;
>                         } else {
> -                               BT_ERR("%s event block is too short", data->hdev->name);
> +                               BT_ERR("%s event block is too short",
> +                                      data->hdev->name);
>                                 return -EILSEQ;
>                         }
>                         break;
>
>                 case HCI_ACLDATA_PKT:
>                         if (len >= HCI_ACL_HDR_SIZE) {
> -                               struct hci_acl_hdr *hdr = (struct hci_acl_hdr *) buf;
> -                               pkt_len = HCI_ACL_HDR_SIZE + __le16_to_cpu(hdr->dlen);
> +                               struct hci_acl_hdr *hdr = (struct hci_acl_hdr *)
> +                                                         buf;
> +                               pkt_len = HCI_ACL_HDR_SIZE + __le16_to_cpu
> +                                                               (hdr->dlen);

Same comment for this change as well. Normally it is advisable to solve other
checkpatch.pl errors/warnings than solving 80 characters one.

>                         } else {
> -                               BT_ERR("%s data block is too short", data->hdev->name);
> +                               BT_ERR("%s data block is too short",
> +                                      data->hdev->name);
>                                 return -EILSEQ;
>                         }
>                         break;
>
>                 case HCI_SCODATA_PKT:
>                         if (len >= HCI_SCO_HDR_SIZE) {
> -                               struct hci_sco_hdr *hdr = (struct hci_sco_hdr *) buf;
> +                               struct hci_sco_hdr *hdr = (struct hci_sco_hdr *)
> +                                                          buf;
>                                 pkt_len = HCI_SCO_HDR_SIZE + hdr->dlen;
>                         } else {
> -                               BT_ERR("%s audio block is too short", data->hdev->name);
> +                               BT_ERR("%s audio block is too short",
> +                                      data->hdev->name);
>                                 return -EILSEQ;
>                         }
>                         break;
> @@ -329,7 +337,8 @@ static inline int bfusb_recv_block(struct bfusb_data *data, int hdr, unsigned ch
>                 data->reassembly = skb;
>         } else {
>                 if (!data->reassembly) {
> -                       BT_ERR("%s unexpected continuation block", data->hdev->name);
> +                       BT_ERR("%s unexpected continuation block",
> +                              data->hdev->name);
>                         return -EIO;
>                 }
>         }
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914151712.GA9806%40life-desktop.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali
http://vaishalithakkar.in/

