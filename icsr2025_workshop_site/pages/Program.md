---
layout: default
title: "Program"
permalink: /program/
nav_order: 1
---

<style>
    /*
     * Important Note for Jekyll:
     * If your Jekyll theme or main CSS already defines styles for basic HTML elements
     * like `body`, `table`, `th`, `td`, etc., some of these styles might conflict.
     * You might need to adjust or remove conflicting styles here, or use more
     * specific CSS selectors if necessary (e.g., `.table-container table { ... }`).
     *
     * The `body` styles are commented out as they are typically defined by the main page.
     * Uncomment or adapt them if you need them specifically for this table's context.
     */

    /* body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 20px;
        background-color: #f4f7f6;
        color: #333;
    } */

    .table-container {
        overflow-x: auto;
        margin: 20px 0; /* Adjust margin as needed for embedding */
        box-shadow: 0 4px 8px rgba(201, 65, 65, 0.1);
        border-radius: 8px;
        background-color: #fff;
    }

    .table-container table {
        width: 100%;
        border-collapse: collapse;
        margin: 0;
    }

    .table-container th, .table-container td {
        padding: 15px 20px;
        text-align: left;
        border-bottom: 1px solid #e0e0e0;
    }

    .table-container th {
        background-color: rgb(0, 174, 239); /* A pleasant red */
        color: white;
        font-weight: bold;
        text-transform: uppercase;
        letter-spacing: 0.05em;
    }

    .table-container tr:nth-child(even) {
        background-color:rgb(234, 250, 255); /* Light red for even rows */
    }

    .table-container tr:hover {
        background-color: #eef;
        transition: background-color 0.5s ease;
    }

    td strong {
        color: #2c3e50;
    }

    /* Responsive adjustments */
    @media screen and (max-width: 600px) {
        table, thead, tbody, th, td, tr {
            display: block;
        }

        thead tr {
            position: absolute;
            top: -9999px;
            left: -9999px;
        }

        tr {
            border: 1px solid #ccc;
            margin-bottom: 10px;
            border-radius: 5px;
        }

        td {
            border: none;
            border-bottom: 1px solid #eee;
            position: relative;
            padding-left: 50%;
            text-align: right;
        }

        td:before {
            content: attr(data-label);
            position: absolute;
            left: 0;
            width: 45%;
            padding-left: 15px;
            font-weight: bold;
            text-align: left;
            white-space: nowrap;
        }
    }
</style>

<div class="table-container">
    <table>
        <thead>
            <tr>
                <th>Time</th>
                <th>Content</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td data-label="Time">8:30 – 8:40</td>
                <td data-label="Content"><strong>Organizer:</strong> Opening Remarks</td>
            </tr>
            <tr>
                <td data-label="Time">8:40 – 9:10</td>
                <td data-label="Content"><strong>Invited Speaker: Katherine J. Kuchenbecker</strong><br>The Haptic Intelligence of HERA and HuggieBot</td>
            </tr>
            <tr>
                <td data-label="Time">9:10 – 10:15</td>
                <td data-label="Content"><strong>Spotlight Talks</strong></td>
            </tr>
            <tr>
                <td data-label="Time">10:15 – 10:45</td>
                <td data-label="Content"><strong>Coffee break & Poster Presentations</strong></td>
            </tr>
            <tr>
                <td data-label="Time">10:45 – 11:15</td>
                <td data-label="Content"><strong>Invited Speaker: Morten Roed Frederiksen</strong><br>Toward anxiety-reducing therapeutic pocket robots for children</td>
            </tr>
            <tr>
                <td data-label="Time">11:15 – 11:45</td>
                <td data-label="Content"><strong>Spotlight Talks</strong></td>
            </tr>
            <tr>
                <td data-label="Time">11:45 – 12:15</td>
                <td data-label="Content"><strong>Panel Discussion:</strong> Touch and Interactive Robots – The Dynamics of Touch Enabled HRI</td>
            </tr>
            <tr>
                <td data-label="Time">12:15 – 12:20</td>
                <td data-label="Content"><strong>Closing Remarks</strong></td>
            </tr>
        </tbody>
    </table>
</div>