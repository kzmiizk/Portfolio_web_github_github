#!/usr/bin/env python3
# これはセクション順序を変更するためのPythonスクリプトです

def reorder_portfolio_sections():
    # Read the entire file
    with open('index.html', 'r', encoding='utf-8') as f:
        lines = f.readlines()

    # Section boundaries based on grep results
    sections = {
        'movies': {'start': 526, 'end': 877},        # Lines 527-877
        'ui_design': {'start': 878, 'end': 988},     # Lines 879-988
        'web_design': {'start': 989, 'end': 1100},   # Lines 990-1100
        'banner': {'start': 1101, 'end': 1222},      # Lines 1102-1222
        'creative': {'start': 1222, 'end': None}     # Lines 1223-end
    }

    # Extract sections (converting to 0-based indexing)
    movies_section = lines[526:878]
    ui_section = lines[878:988]
    web_section = lines[989:1101]
    banner_section = lines[1101:1223]
    creative_section = lines[1223:]

    # Get the part before sections and after sections
    before_sections = lines[:527]

    # New order: Web Design, UI Design, Movies, Banner, Creative
    reordered_sections = (
        web_section +
        ui_section +
        movies_section +
        banner_section +
        creative_section
    )

    # Combine all parts
    new_content = before_sections + reordered_sections

    # Write back to file
    with open('index.html', 'w', encoding='utf-8') as f:
        f.writelines(new_content)

    print("Sections reordered successfully!")
    print("New order: Web Design → UI Design → Movies → Banner → Creative")

if __name__ == "__main__":
    reorder_portfolio_sections()